using CommunityMedicineAutomation.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;



namespace CommunityMedicineAutomation.DAL
{
    public class CenterGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connectionDB"].ConnectionString;

        public List<Center> GetAllDistrict()
        {
            List<Center> districtList=new List<Center>();

             string query = "SELECT * FROM DistrictTBL";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Center center=new Center();
                center.Id=int.Parse(reader["Id"].ToString());
                center.DistrictName = reader["DistrictName"].ToString();

                districtList.Add(center);

            }
            reader.Close();
            connection.Close();
            return districtList;


        }

        public List<Center> GetAllThana(int id)
        {
            List<Center> thanaList = new List<Center>();

            string query = "SELECT * FROM ThanaTBL WHERE DistrictId='"+id+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Center center = new Center();
                center.Id = int.Parse(reader["Id"].ToString());
                center.ThanaName = reader["ThanaName"].ToString();

                thanaList.Add(center);

            }
            reader.Close();
            connection.Close();
            return thanaList;


        }

      
        public List<Center> CenterCountInThana(int id) {
            int count = 0;
            List<Center> centerList=new List<Center>();
            string query = "SELECT * FROM CenterTBL WHERE ThanaId='" + id + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Center aCenter=new Center();
                aCenter.Id =int.Parse( reader["Id"].ToString());
                aCenter.CenterName = reader["CenterName"].ToString();
                count++;
                aCenter.Count = count;
                centerList.Add(aCenter);

            }
            reader.Close();
            connection.Close();
            return centerList;
        }
        public int SaveCenter(Center aCenter, int thanaId, string centerCode, string password) {


            string query = "INSERT INTO CenterTBL VALUES('" + aCenter.CenterName + "','" + thanaId + "','" + centerCode + "','" + password + "')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
        public int centerId;
        public bool IsCenterCodeAndPasswordExists(string centerCode, string password)
        {
            centerId = 0;
            bool test = false;
            string query = "SELECT * FROM CenterTBL WHERE CenterCode='" + centerCode + "' AND Password='"+password+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                centerId=int.Parse(reader["Id"].ToString());
                test = true;
              
            }
            reader.Close();
            connection.Close();
            return test;
        }

        public bool IsCenterNameExists(Center aCenter) {
            bool exists = false;
            string query = "SELECT * FROM CenterTBL WHERE CenterName='" + aCenter.CenterName + "'";
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
        public string GetCenterName(int centerId) {
            string centerName = "";
            string query = "SELECT * FROM CenterTBL WHERE Id='" + centerId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                centerName = reader["CenterName"].ToString();

            }
            reader.Close();
            connection.Close();
            return centerName;
        }
        public int GetThanaId(int centerId) {
            int thanaId = 0;
            string query = "SELECT * FROM CenterTBL WHERE Id='" + centerId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                thanaId =int.Parse( reader["ThanaId"].ToString());

            }
            reader.Close();
            connection.Close();
            return thanaId;
        }
        public int GetDistrictId(int thanaId)
        {
            int districtId = 0;
            string query = "SELECT * FROM ThanaTBL WHERE Id='" + thanaId + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                districtId = int.Parse(reader["DistrictId"].ToString());

            }
            reader.Close();
            connection.Close();
            return districtId;
        }
        public List<int> GetDistrictIdList(int centerId)
        {
            List<int> districtIdList = new List<int>();
            string query = "SELECT * FROM CenterPatientRelationTBL WHERE CenterId='" + centerId + "'";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                int districtId = int.Parse(reader["DistrictId"].ToString());

                districtIdList.Add(districtId);
            }
            reader.Close();
            connection.Close();
            return districtIdList;
        }
        public string GetDistrict(int districtId)
        {

            string districtName = "";
            string query = "SELECT * FROM DistrictTBL WHERE Id='"+districtId+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                
                
                districtName = reader["DistrictName"].ToString();

               

            }
            reader.Close();
            connection.Close();
            return districtName;


        }
        public decimal GetDistrictPopulation(string districtName)
        {

            decimal population = 0;
            string query = "SELECT * FROM DistrictTBL WHERE DistrictName='" + districtName+ "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                population =decimal.Parse( reader["Population"].ToString());

            }
            reader.Close();
            connection.Close();
            return population;


        }
    }
}