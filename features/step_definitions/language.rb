#Russian - English

When(/^пользователь нажимает на иконку смены языка$/) do
  tap_when_element_exists("androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton")
end

When(/^в выпадающем окне выбирает английский язык$/) do
  tap_when_element_exists("com.google.android.material.textview.MaterialTextView text:'English'")
end

When(/^язык приложения менятеся с русского на английский$/) do
  check_element_exists("androidx.appcompat.widget.AppCompatTextView text:'Welcome'")
  check_element_exists("androidx.appcompat.widget.AppCompatTextView text:'I have a Github account'")
  check_element_exists("* text:'Create new Github account'")
end

#English - Russian

When(/^пользователь выбрал английский язык$/) do
  step"пользователь нажимает на иконку смены языка"
  step"в выпадающем окне выбирает английский язык"
end

When(/^в выпадающем окне выбирает русский язык$/) do
  tap_when_element_exists("com.google.android.material.textview.MaterialTextView text:'Русский'")
end

When(/^язык приложения менятеся с английского на русский$/) do
  check_element_exists("androidx.appcompat.widget.AppCompatTextView text:'Добро пожаловать'")
  check_element_exists("androidx.appcompat.widget.AppCompatTextView text:'У меня есть аккаунт Github'")
  check_element_exists("* text:'Создать новый аккаунт Github'")
end

