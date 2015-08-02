using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.Model;
using System.Configuration;

namespace CommunityMedicineAutomation.DAL
{
    public class DiseaseGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connectionDB"].ConnectionString;

        public int SaveDisease(Disease aDisease)
        {
            string query = "INSERT INTO DiseaseTBL VALUES('" + aDisease.NameOfDisease + "','"+aDisease.Description+"','"+aDisease.TreatmentProcedure+"')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }


        public List<Disease> GetAllDiseases()
        {
            int count = 0;
            List<Disease> diseasesList=new List<Disease>();

            string query = "SELECT * FROM DiseaseTBL";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Disease aDisease=new Disease();
                aDisease.Id = int.Parse(reader["Id"].ToString());
                aDisease.NameOfDisease = reader["Name"].ToString();
                aDisease.Description = reader["Description"].ToString();
                aDisease.TreatmentProcedure = reader["TreatmentProcedure"].ToString();
                count++;
                aDisease.SerialNo = count;
                diseasesList.Add(aDisease);


            }

            reader.Close();
            connection.Close();

            return diseasesList;
        }
        public string GetDiseaseName(int diseaseId)
        {
            string diseaseName = "";
            string query = "SELECT * FROM DiseaseTBL WHERE Id='" + diseaseId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                diseaseName = reader["Name"].ToString();

            }
            reader.Close();
            connection.Close();
            return diseaseName;
        }
        public bool IsDiseaseExists(Disease aDisease)
        {
            bool exists = false;
            string query = "SELECT * FROM DiseaseTBL WHERE Name='" + aDisease.NameOfDisease + "'";
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
    }
}