class AddDefaultImgUrlToFlats < ActiveRecord::Migration[6.0]
  def change
    change_column_default :flats, :img_url, "https://picsum.photos/1000/500"
  end
end
