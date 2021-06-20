class TagsController < ApplicationController
  def index
    tags = Tag.all
    if tags
      render json: {"tags"=>tags}
    else
      render json: {"message"=>"タグを取得できませんでした"}
    end
  end
  
  def createTag
    target = receiveBody
    begin
      target.save!
      puts "保存成功"
    rescue ActiveRecord::RecordInvalid => exception
      puts exception
      puts "保存失敗"
    end
  end

  def deleteTag
    tagId = params[:id]
    target = Tag.find(tagId[:id])
    begin
      target.destroy!
      puts "保存成功"
    rescue ActiveRecord::RecordInvalid => exception
      puts exception
      puts "保存失敗"
    end
  end

  def updateTag
    tagId = params[:id]
    tag = receiveBody
    target = Tag.find(tagId[:id])
    begin
      target.update!(name: tag[:name])
    rescue ActiveRecord::RecordInvalid=> exception
      puts exception
    else
      
    end
  end
  
  def receiveBody
   JSON.parse(request.body.read, {:symbolize_names => true})
  end
end