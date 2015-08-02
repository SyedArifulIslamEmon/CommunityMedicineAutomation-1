using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.DAL
{
    public class PatientGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connectionDB"].ConnectionString;

        public int GetServiceTimes(string voterId) {
            int count = 0;
            string query = "SELECT * FROM PatientTBL WHERE VoterId='" + voterId + "' ";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                count = int.Parse(reader["ServiceTimes"].ToString());
            }
            reader.Close();
            connection.Close();
            return count;
        }
        public int SavePatient(Patient aPatient)
        {
            string query = "INSERT INTO PatientTBL VALUES('" + aPatient.VoterId + "','" + aPatient.ServiceTimes + "')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
        public bool IfPatientExists(Patient aPatient)
        {
            string query = "SELECT * FROM PatientTBL WHERE VoterId='" + aPatient.VoterId + "' ";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
           if(reader.Read())
           {
               reader.Close();
               connection.Close();
               return true;
           }
        else
           {
               reader.Close();
               connection.Close();
        return false;
             }
            
        }
        public int UpdateServiceTimes(Patient aPatient)
        {
            string query = "UPDATE PatientTBL SET ServiceTimes='"+aPatient.ServiceTimes+"' WHERE VoterId='"+aPatient.VoterId +"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }
        public void PatientCenterTblValue(int patientId, int centerId, int districtId)
        {
            string query = "INSERT INTO CenterPatientRelationTBL VALUES('" + patientId + "','" + centerId + "','" + districtId + "')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        
        }
        public int ServiceTime { get; set; }
        public int GetPatientId(Patient aPatient)
        {
            int patientId = 0;
            string query = "SELECT * FROM PatientTBL WHERE VoterId='" + aPatient.VoterId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                patientId =int.Parse( reader["Id"].ToString());
                ServiceTime = int.Parse(reader["ServiceTimes"].ToString());
            }
            reader.Close();
            connection.Close();
            return patientId;
        }
        public int GetDistictWaisePatientId(int patientId, int districtId) {
            int distictWaisePatientId = 0;
            string query = "SELECT * FROM CenterPatientRelationTBL WHERE PatientId='"+patientId+"' AND DistrictId='"+districtId+"'";

            
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                distictWaisePatientId = int.Parse(reader["PatientId"].ToString());
                
            }
            reader.Close();
            connection.Close();
            return distictWaisePatientId;
        }
        
    }
}