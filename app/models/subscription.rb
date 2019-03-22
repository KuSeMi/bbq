class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_name, presence: true, unless: -> { user.present? }

  validates :user_email, presence: true, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
            uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  # переопределяем метод, если есть юзер, выдаем его имя,
  # если нет -- дергаем исходный переопределенный метод
  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  # переопределяем метод, если есть юзер, выдаем его email,
  # если нет -- дергаем исходный переопределенный метод
  def user_email
    if user.present?
      user.email
    else
      super
    end
  end
end
