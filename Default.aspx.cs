using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IPTPROJECT
{
        public partial class _Default : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadCampusData();
                }
            }

            private void LoadCampusData()
            {
                List<CampusInfo> campuses = new List<CampusInfo>
            {
                new CampusInfo { CampusName = "Lingayen Campus", Description = "Pangasinan State University - Lingayen Campus is the main campus, known for its academic excellence and innovation.", ImageUrl = "https://main.psu.edu.ph/wp-content/uploads/2022/06/lingayen.jpg" },
                new CampusInfo { CampusName = "Urdaneta Campus", Description = "The Urdaneta Campus excels in research and technology programs, providing high-quality education in various fields.", ImageUrl = "https://sinagngbayan.com/wp-content/uploads/2021/11/psu.jpg" },
                new CampusInfo { CampusName = "Alaminos Campus", Description = "Alaminos Campus focuses on coastal studies and environmental research, supporting sustainable development initiatives.", ImageUrl = "https://alaminos.psu.edu.ph/wp-content/uploads/2022/07/290567830_375010488048775_6764235710948902268_n.jpg" },
                new CampusInfo { CampusName = "San Carlos Campus", Description = "San Carlos Campus is a leader in business and management studies, offering top-tier programs.", ImageUrl = "https://amputiylayag.com/wp-content/uploads/2023/12/PSU-2023-3-1024x731.png" },
                new CampusInfo { CampusName = "Bayambang Campus", Description = "Bayambang Campus specializes in teacher education, producing top-performing graduates in the field of education.", ImageUrl = "https://main.psu.edu.ph/wp-content/uploads/2022/06/bayambang.jpg" },
                new CampusInfo { CampusName = "Infanta Campus", Description = "Infanta Campus focuses on agriculture and fisheries, helping local communities through sustainable development.", ImageUrl = "https://infanta.psu.edu.ph/wp-content/uploads/2022/08/DSC0619-1-scaled.jpg" },
                new CampusInfo { CampusName = "Santa Maria Campus", Description = "Santa Maria Campus is known for its technical and vocational courses, empowering students with practical skills.", ImageUrl = "https://stamaria.psu.edu.ph/wp-content/uploads/2022/07/psusmfacilites_slrsch-1-400x284.jpg" },
                new CampusInfo { CampusName = "Binmaley Campus", Description = "Binmaley Campus specializes in fisheries and marine sciences, contributing to the sustainable development of the fishing industry.", ImageUrl = "https://main.psu.edu.ph/wp-content/uploads/2022/06/binmaley.jpg" },
                new CampusInfo { CampusName = "Asingan Campus", Description = "Asingan Campus offers programs in engineering and information technology, equipping students with the skills for future careers in tech industries.", ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ691mn0_93el0We_-3d4Eutt6bHaU2-Hj8Q&s" }
            };

                rptCampuses.DataSource = campuses;
                rptCampuses.DataBind();
            }
        }

        public class CampusInfo
        {
            public string CampusName { get; set; }
            public string Description { get; set; }
            public string ImageUrl { get; set; }
        }
    }
