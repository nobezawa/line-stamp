# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Validate
  validates :name, {
    :presence => { :message => "名前を入力してください" }
  }

  validates :email, {
    :presence => { :message => "Eメールアドレスを入力してください" },
    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "Eメールアドレスは不正な値です" }
  }

  validates :password, presence: { :message => "パスワードを入力してください" }, on: :create
  validates :password, length: {minimum: 8}, allow_blank: true
  

end
