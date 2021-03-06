Given %r{зарегистрирована команда "(.*)" под руководством (.*)}i do |team_name, nickname|
  Given %{я залогинен как #{nickname}}
  When %{я пытаюсь создать команду "#{team_name}"}
  Then %{должен быть перенаправлен в личный кабинет}
  Then %{там должен увидеть "Вы - капитан команды"}
  Then %{должен увидеть "#{team_name}"}
end

When %r{пытаюсь создать команду "(.*)"}i do |team_name|
  When %{захожу в личный кабинет}
  When %{я иду по ссылке "Создать команду"}
  When %{ввожу "#{team_name}" в поле "Название"}
  When %{нажимаю "Создать команду"}
end

Given %r{пользователь (.*) состоит в команде "(.*)"}i do |nickname, team_name|
  captain_nickname = Team.find_by_name(team_name).captain.nickname

  Given %{зарегистрирован пользователь #{nickname}}
  Given %{я логинюсь как #{captain_nickname}}
  Given %{высылаю пользователю #{nickname} приглашение вступить в команду}
  When %{я логинюсь как #{nickname}}
  When %{я иду по ссылке "(принять)"}
  Then %{должен быть перенаправлен в личный кабинет}
  Then %{должен увидеть "Вы состоите в команде"}
  Then %{должен увидеть "#{team_name}"}
end