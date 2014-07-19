# -*- coding: utf-8 -*-

class ProjectType < ActiveRecord::Base
  belongs_to :project_types
  validates :title,{
    :presence => {:message => 'タイトルを入力して下さい'}
  }


end
