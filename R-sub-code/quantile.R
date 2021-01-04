
df%>%select(2:6)%>%
  map(~quantile(.,c(0.05,0.25,0.5,0.75,0.975),na.rm=T))

#50,75,90,95,97.5 và 99 theo phương pháp Harell Davis 
#cho điểm số mô toán ở mỗi tỉnh thành

math_df %>% split(.$Province) %>% 
  map(.,~ Hmisc::hdquantile(.x$Math,probs =c(0.5,0.75,0.9,0.95,0.975,0.99)))->hdquantile

hdquantile


#Ghi chú: phép ước tính phân vị theo Harell Davis có sử dụng bootstrap, 
#nên rất phổ quát và không phụ thuộc vào đặc tính phân bố, khác với mô tả thông thường. 
#Nếu ở một tỉnh nào đó mà có HDquantile thứ 99 cao hơn trị số này cho quần thể chung, 
#thì ở khu vực đó đã có điều bất thường xảy ra, thí dụ ở Hà Giang trị số HDQ 99 là 8.859, 
#cao hơn rất nhiều so với cả nước (chỉ có 8.0 điểm)
