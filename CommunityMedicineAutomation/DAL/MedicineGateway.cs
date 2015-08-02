using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Configuration;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.DAL
{
   
    public class MedicineGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connectionDB"].ConnectionString;

        public int SaveMedicine(Medicine aMedicine)
        {
            string query = "INSERT INTO MedicineTBL VALUES('" + aMedicine.NameOfMedicine + "')";
            SqlConnection connection=new SqlConnection(connectionString);

            SqlCommand command=new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;



        }

        public List<Medicine> GetAllMedicines()
        {
            int count = 0;
            List<Medicine> medicineList=new List<Medicine>();

            string query = "SELECT * FROM MedicineTBL ";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Medicine aMedicine=new Medicine();
                aMedicine.Id = int.Parse(reader["Id"].ToString());
                aMedicine.NameOfMedicine = reader["NameOfMedicine"].ToString();
                count++;
                aMedicine.SerialNo = count;
                medicineList.Add(aMedicine);

            }
            reader.Close();
            connection.Close();
            return medicineList;
        }
        public int GetMedicineId(string medicine) {
            int id = 0;
              string query = "SELECT * FROM MedicineTBL WHERE NameOfMedicine='"+medicine+"' ";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                id = int.Parse(reader["Id"].ToString());
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public int SendMedicine(int centerId, int medicineId, int quantity) {
            string query = "INSERT INTO CenterMedicineRelationTBL VALUES('" + centerId+ "','"+medicineId+"','"+quantity+"')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
        public Medicine GetCenterAllMedicines(int medicineId)
        {
            Medicine aMedicine = new Medicine();
            string query = "SELECT * FROM MedicineTBL WHERE Id='" + medicineId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                aMedicine.Id = int.Parse(reader["Id"].ToString());
                aMedicine.NameOfMedicine = reader["NameOfMedicine"].ToString();

            }
            reader.Close();
            connection.Close();
            return aMedicine;
        }
        public bool IsMedinineExists(Medicine aMedicine) {
            bool exists = false;
            string query = "SELECT * FROM MedicineTBL WHERE NameOfMedicine='" + aMedicine.NameOfMedicine + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                exists = true;
            }
            reader.Close();
            connection.Close();
            return exists;
        }
        public string GetMedicineName(int medicineId)
        {
            string medicineName = "";
            string query = "SELECT * FROM MedicineTBL WHERE Id='" + medicineId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                medicineName = reader["NameOfMedicine"].ToString();

            }
            reader.Close();
            connection.Close();
            return medicineName;
        }
    }
}