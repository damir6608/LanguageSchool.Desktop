using System;
using System.Collections.Generic;
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
    /// Interaction logic for ServicesWindow.xaml
    /// </summary>
    public partial class ServicesWindow : Window
    {
        private readonly bool _isAdmin;
        private readonly LanguageSchoolEntities _db;
        public ServicesWindow(bool isAdmin = false)
        {
            _isAdmin = isAdmin;
            _db = new LanguageSchoolEntities();
            InitializeComponent();
            ListServices.ItemsSource = _db.Services.ToList();
            ComboBoxFilterProductDiscountAmount.ItemsSource = new List<string>() 
            {
                "от 0 до 5%",
                "от 5% до 15%",
                "от 15% до 30%",
                "от 30% до 70%",
                "от 70% до 100%",
                "Все"
            };
            updateCounterList();

            OrderByFilter.ItemsSource = new List<string>()
            {
                "По возрастанию",
                "По убыванию"
            };
        }

        private void ComboBoxFilterProductDiscountAmount_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedIndex = ComboBoxFilterProductDiscountAmount.SelectedIndex;

           if (selectedIndex == 0)
            {
                ListServices.ItemsSource = _db.Services.Where(serv => serv.Sale >= 0 && serv.Sale <=5).ToList();
            }
           else if (selectedIndex == 1)
            {
                ListServices.ItemsSource = _db.Services.Where(serv => serv.Sale >= 5 && serv.Sale <= 15).ToList();
            }
           else if (selectedIndex == 2)
            {
                ListServices.ItemsSource = _db.Services.Where(serv => serv.Sale >= 15 && serv.Sale <= 30).ToList();
            }
           else if (selectedIndex == 3)
            {
                ListServices.ItemsSource = _db.Services.Where(serv => serv.Sale >= 30 && serv.Sale <= 70).ToList();
            }
           else if (selectedIndex == 4)
            {
                ListServices.ItemsSource = _db.Services.Where(serv => serv.Sale >= 70 && serv.Sale <= 100).ToList();
            }
           else if (selectedIndex == 5)
            {
                ListServices.ItemsSource = _db.Services.ToList();
            }
            updateCounterList();
        }

        private void OrderByFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedIndex = OrderByFilter.SelectedIndex;

            if (selectedIndex == 0)
            {
                ListServices.ItemsSource = _db.Services.OrderBy(serv => serv.Cost).ToList();
            }
            else if (selectedIndex == 1)
            {
                ListServices.ItemsSource = _db.Services.OrderByDescending(serv => serv.Cost).ToList();
            }
        }

        private void Search_TextChanged(object sender, TextChangedEventArgs e)
        {
            ListServices.ItemsSource = _db.Services.Where(serv => serv.Name.Contains(Search.Text)).ToList();
            updateCounterList();
        }

        private void AddServiceButton_Click(object sender, RoutedEventArgs e)
        {
            Hide();
            new EditCreateWindow(null, false, _isAdmin).ShowDialog();
        }

        private void ButtonExit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var item = (sender as Button)?.DataContext as Service;

            Hide();
            new EditCreateWindow(item, true, _isAdmin).ShowDialog();  
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var item = (sender as Button)?.DataContext as Service;

            var deletedItem = _db.Services.Find(item.Id);

            _db.Services.Remove(deletedItem);
            _db.SaveChanges();
            ListServices.ItemsSource = _db.Services.ToList();
            updateCounterList();
        }

        private void updateCounterList()
        {
            var items = ListServices.Items.Count;

            CounterList.Content = $"Показано {items} записей из {_db.Services.ToList().Count}";
        }
    }
}
