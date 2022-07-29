require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿' do

    context '投稿が成功する場合' do
      it '投稿が成功する場合' do
        expect(@post).to be_valid
      end
    end

    context '投稿が失敗する場合' do
     
      it '害虫の特徴が空では投稿できない' do
        @post.detail = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Detail can't be blank")
      end

      it '害虫の大きさが空では投稿できない' do
        @post.size_id = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Size can't be blank")
      end

      it '害虫の出現場所が空では投稿できない' do
        @post.place_id = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Place can't be blank")
      end
      
      it '画像が空では出品できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
