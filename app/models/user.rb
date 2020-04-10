# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, validatable
  devise :masqueradable,
         :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :omniauthable

  has_person_name

  has_many :notifications, foreign_key: :recipient_id
  has_many :services
  has_many :orders
end
