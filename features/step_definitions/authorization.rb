When(/^Язык приложения \- русский$/) do
  if element_exists("* text:'Create new Github account'")
    then
    step'пользователь нажимает на иконку смены языка'
    step'во всплывающем окне выбирает русский язык'
  end
end

When(/^пользователь нажимает кнопку Создать новый аккаунт Github$/) do
  tap_when_element_exists("com.google.android.material.button.MaterialButton id:'registrationButton'")
end

When(/^Вводит невалидную почту$/) do
  query("* id:'emailEditText'",:setText=>'wrong@mail')
end

When(/^Вводит валидный пароль$/) do
  query("* id:'passwordEditText'",:setText=>'Password346')
end

When(/^Указывает валидную дату рождения$/) do
  touch("* id:'birthDateEditText'")
  query("datePicker",:method_name =>'updateDate',:arguments =>[1992,02,23])
  touch("* id:'button1'")
end

When(/^Указывает валидную дату выдачи паспорта$/) do
  touch("* id:'passportIssueDateEditText'")
  query("datePicker",:method_name =>'updateDate',:arguments =>[2012,03,12])
  touch("* id:'button1'")
end

When(/^нажимает кнопку Зарегистрироваться$/) do
  touch("com.google.android.material.button.MaterialButton text:'Зарегистрироваться'")
end

When(/^пользователью отображается ошибка о том, что email некорректен$/) do
  element_exists("androidx.appcompat.widget.AppCompatTextView text:'Некорректный email'")
end

