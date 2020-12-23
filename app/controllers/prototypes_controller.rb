class PrototypesController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  def index
    @prototypes = Prototype.includes(:user)
  end
  
  def new
    @prototype = Prototype.new
  end
  #newアクションにインスタンス変数@prototypeを定義し、Prototypeモデルの新規オブジェクトを代入した
  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
  end
end
  #prototypesコントローラーにnewアクションとcreateアクションを設定した（まだアクション内の処理は書かない）

def show
  @prototype=Prototype.find(params[:id])
  @comment = Comment.new
  @comments = @prototype.comments
end
#showアクションにインスタンス変数@prototypeを定義した。且つ、Pathパラメータで送信されるID値で、Prototypeモデルの特定のオブジェクトを取得するように記述し、それを@prototypeに代入した

def edit
  @prototype=Prototype.find(params[:id])
end

def update
  @prototype=Prototype.find(params[:id])
  if @prototype.update(prototype_params)
    redirect_to prototype_path(@prototype)
    else
      render :edit
    end
end


def destroy
  @prototype=Prototype.find(params[:id])
  if @prototype.destroy
    redirect_to root_path
  else
    redirect_to root_path
  end
end

private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
#prototypesコントローラーのprivateメソッドにストロングパラメーターをセットし、特定の値のみを受け付けるようにした。且つ、user_idもmergeした
   def contributor_confirmation
    redirect_to root_path unless current_user == @prototype.user
   end
  end

