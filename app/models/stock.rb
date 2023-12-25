class Stock < ApplicationRecord
        mount_uploader :image, ImageUploader
        #４行目は文字数制限（上限）　validates :カラム名, length: {maximum: 上限数}
        validates :name, length: {maximum: 20}
        #６行目は空ではないかの確認　validates :カラム名, :カラム名, presence: true
        validates :name, :num, presence: true

        validates :num, numericality: { greater_than_or_equal_to: 0}
end
