class UserDatatable < ApplicationDatatable

  def self.test
    first_user = User.first
    
    row1 = [first_user.first_name,first_user.last_name,first_user.birthday,first_user.address,"<b>aaaaa</b>"]
    row2 = ["bbbbb","bbbbb","bbbbb","bbbbb","bbbbb"]
    row3 = ["ccccc","ccccc","ccccc","ccccc","ccccc"]
    a = { "data"=> [
      row1,
      row2,
      row3]
    }
    j = a.to_json
    j
    
    # @users = User.all




    # binding.pry
    

  #  {"draw"=>"1", "columns"=>{"0"=>{"data"=>"#{first_user.first_name}", "name"=>"rtyrty", "searchable"=>"true", "orderable"=>"true", "search"=>{"value"=>"", "regex"=>"false"}}}, "order"=>{"0"=>{"column"=>"0", "dir"=>"asc"}}, "start"=>"0", "length"=>"10", "search"=>{"value"=>"", "regex"=>"false"}, "_"=>"1559332895762"}

  end

  # def view_columns
  #   # Declare strings in this format: ModelName.column_name
  #   # or in aliased_join_table.column_name format
  #   @view_columns ||= {
  #     first_name: { source: "User.first_name", cond: :like },
  #     last_name: { source: "User.last_name", cond: :like },
  #     birthday: { source: "User.birthday", cond: :like },
  #     birthday: { source: "User.birthday", cond: :like },
  #   }
  # end

  # def data
  #   records.map do |record|
  #     {
  #       # example:
  #       # id: record.id,
  #       # name: record.name
  #     }
  #   end
  # end

  # def get_raw_records
  #   # insert query here
  #   User.all
  # end

  # def index
  #   respond_to do |format|
  #     format.html
  #     format.json { render json: UserDatatable.new(params, view_context: view_context) }
  #   end
  # end

  # private

  # def data
  #   users.map do |user|
  #     [].tap do |column|
  #       column << user.first_name
  #       column << user.last_name
  #       column << user.birthday
  #       column << user.address
  #     end
  #   end
  # end

  # def count
  #   User.count
  # end

  # def total_entries
  #   user.total_count
  # end

  # def users
  #   @users ||= fetch_users
  # end

  # def fetch_users
  #   search_string = []
  #   columns.each do |term|
  #     search_string << "#{term} like :serch"
  #   end

  #   users = User.page(page).per(per_page)
  #   users = users.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  # end

  # def columns
  #   %w(first_name last_name birthday address)
  # end
end