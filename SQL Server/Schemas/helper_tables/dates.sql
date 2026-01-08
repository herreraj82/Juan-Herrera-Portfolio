create table helper_tables.dates (
    date_id                       int          not null primary key identity(1,1),
    date                          date not     null,
    iso8601_string_representation char(23)     null,
    calendar_year                 int          null,
    fiscal_year                   int          null,
    calendar_quarter              int          null,
    fiscal_quarter                int          null,
    calendar_month                int          null,
    fiscal_month                  int          null,
    day                           int          null,
    month_name                    nvarchar(20) null,
    day_of_the_week               int          null,
    day_of_the_week_name          nvarchar(20) null,
    week_of_the_year              int          null,
    day_of_the_year               int          null
);

insert into helper_tables.dates(date)
select 
       dateadd(day, i.integer, cast(DATEFROMPARTS(1900, 1, 1) as date)) as date
  from helper_tables.integers i 
 where i.integer <= 70000  
;

update d
   set iso8601_string_representation = convert(varchar, d.date, 126),
       calendar_year                 = year(d.date),
       calendar_quarter              = floor(month(d.date) / 4) + 1,
       calendar_month                = month(d.date),
       day                           = day(d.date),
       month_name                    = datename(month, d.date),
       day_of_the_week               = case 
                                            when datename(weekday, d.date) = 'Sunday'    then  0
                                            when datename(weekday, d.date) = 'Monday'    then  1
                                            when datename(weekday, d.date) = 'Tuesday'   then  2
                                            when datename(weekday, d.date) = 'Wednesday' then  3
                                            when datename(weekday, d.date) = 'Thursday'  then  4
                                            when datename(weekday, d.date) = 'Friday'    then  5
                                            when datename(weekday, d.date) = 'Saturday'  then  6
                                            else                                              -1                                                                
                                       end,
       day_of_the_week_name          = datename(weekday, d.date),
       week_of_the_year              = datename(week, d.date),
       day_of_the_year               = datename(dayofyear, d.date)
  from helper_tables.dates d;

update d
   set fiscal_year    = d.calendar_year,
       fiscal_quarter = d.calendar_quarter,
       fiscal_month   = d.calendar_month
  from helper_tables.dates d;
