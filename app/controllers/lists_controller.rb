class ListsController < ApplicationController
  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lists }
    end
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list = List.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list }
    end
  end

  # GET /lists/new
  # GET /lists/new.json
  def new
    @list = List.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list }
    end
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to club_path(@list.club_id), notice: 'List was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lists/1
  # PUT /lists/1.json
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @list = List.find(params[:id])
    @list.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thank you for voting!"
  end

  def poprock
    @heat_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 10 ], :limit => 20)
    @hot_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 10 ], :limit => 25)
    @list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 10 ])

    respond_to do |format|
      format.html { render "lists/categories/pop_rock" }
      format.json { render json: @heat_list }
    end
  end

  def rock
    @heat_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 2 ], :limit => 20)
    @hot_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 2 ], :limit => 25)
    @list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 2 ])

    respond_to do |format|
      format.html { render "lists/categories/rock" }
      format.json { render json: @heat_list }
    end
  end

  def indie
    @heat_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 9 ], :limit => 20)
    @hot_list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 9 ], :limit => 25)
    @list = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "genre = ?", 9 ])

    respond_to do |format|
      format.html { render "lists/categories/indie" }
      format.json { render json: @heat_list }
    end
  end
end
