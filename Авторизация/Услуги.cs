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
    
    public partial class Услуги
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Услуги()
        {
            this.Оказанные_услуги = new HashSet<Оказанные_услуги>();
        }
    
        public int Код_услуги { get; set; }
        public string Наименование_услуги { get; set; }
        public Nullable<decimal> Стоимость_услуги { get; set; }
        public Nullable<int> Код_сотрудника_ответственного_за_услугу { get; set; }
        public Nullable<int> Код_должности_сотрудника { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Оказанные_услуги> Оказанные_услуги { get; set; }
    }
}
