Функционал: Переход на следующий уровень
  Если один из членов команды вводит правильный ответ
  То команда долджна перейти на следующий уровень игры

  Предыстория:
    Допустим сейчас "2009-01-01 00:00"
    И создана игра "Котлованы Бишкека"
    И в игре "Котлованы Бишкека" следующие задания:
      | Название    | Код              |
      | Общий старт | enstart          |
      | Обед        | enсопог          |
      | Финиш       | enяйцаконя       |
    И начало игры "Котлованы Бишкека" назначено на "2009-02-01 15:00"
    А сейчас "2009-02-01 15:01"
    И допустим зарегистрирована команда "Mushrooms" под руководством Noel
  
  Сценарий: Один из членов команды вводит правильный ответ
    Если я логинюсь как Noel
    И захожу в игру "Котлованы Бишкека"    
    И ввожу "enstart" в поле "Ответ"
    И нажимаю "Отправить!"    
    То должен увидеть "Уровень #2"
    И должен увидеть "Обед"
  
  Сценарий: Вводится неправильный ответ
    Если я логинюсь как Noel
    И захожу в игру "Котлованы Бишкека"
    И ввожу "en-всякая-бабуйня" в поле "Ответ"
    И нажимаю "Отправить!"    
    То должен увидеть "Уровень #1"