//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Авторизация
{
    using System;
    using System.Collections.Generic;
    
    public partial class Пациент
    {
        public int ID { get; set; }
        public string Фамилия { get; set; }
        public string Имя { get; set; }
        public string Отчество { get; set; }
        public string Дата_рождения { get; set; }
        public Nullable<int> Серия_паспорта { get; set; }
        public Nullable<int> Номер_паспорта { get; set; }
        public string Телефон { get; set; }
        public string Email { get; set; }
        public Nullable<int> Номер_страхового_полиса { get; set; }
    }
}
