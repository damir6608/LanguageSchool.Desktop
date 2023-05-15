using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LanguageSchool.Desktop
{
    /// <summary>
    /// Interaction logic for EditCreateWindow.xaml
    /// </summary>
    public partial class EditCreateWindow : Window
    {
        private readonly Service _service;
        private readonly bool _isEdit;
        private readonly bool _isAdmin;
        private readonly LanguageSchoolEntities _db;
        private string _imagePath;

        public EditCreateWindow(Service service = null, bool isEdit = false, bool isAdmin = false)
        {
            if(service == null)
            {
                service= new Service();
            }
            _db = new LanguageSchoolEntities();
            _service = service;
            _isEdit = isEdit;
            _isAdmin = isAdmin;
            InitializeComponent();
            ServiceGrid.DataContext = _service;
        }

        private void SaveButtom_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (_isEdit)
                {
                    var updatedServ = _db.Services.Find(_service.Id);
                    updatedServ.Name = _service.Name;
                    updatedServ.GenderRecomented = _service.GenderRecomented;
                    updatedServ.Description = _service.Description;
                    updatedServ.Cost = _service.Cost;
                    updatedServ.Duration = _service.Duration;
                    updatedServ.Sale = _service.Sale;
                }
                else
                {
                    _service.MainPhoto = _imagePath;
                    _db.Services.Add(_service);
                }

                _db.SaveChanges();
                MessageBox.Show("Успешно!");

                Hide();
                new ServicesWindow(_isAdmin).Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void EditPhotoButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var Picture = _service.MainPhoto;
                OpenFileDialog opFD = new OpenFileDialog();
                opFD.ShowDialog();
                var imag = opFD.FileName;
                var s = System.IO.Directory.GetCurrentDirectory().Replace("\\bin\\Debug", string.Empty).Replace("\\", "/");
                string dest = @s + "/Photos/" + System.IO.Path.GetFileName(imag);
                Image image = new Image();
                var bi = new BitmapImage(new Uri(imag));
                Photo.Source = bi;
                var pr = _db.Services.ToList().Find(f => f.Id == _service.Id);
                if (pr == null)
                    _imagePath = "Photos/" + opFD.SafeFileName;
                else
                {
                    pr.MainPhoto = "Photos/"+ opFD.SafeFileName;
                    _db.SaveChanges();
                }


                ServiceGrid.DataContext = pr;
                File.Copy(imag, dest);
            }
            catch
            {

            }
        }

        private void ExitButtom_Click(object sender, RoutedEventArgs e)
        {
            Hide();
            new ServicesWindow(_isAdmin).Show();
        }
    }
}
