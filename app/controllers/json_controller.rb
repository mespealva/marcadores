class JsonController < ActionController::Base

    def json
        @cats=Cat.all
        @data = []
        @cats.each do |c|
            webmarks= []
            childrens =[]
            unless c.webmarks.empty?
                c.webmarks.each do |w|
                webmark = {
                    id: w.id,
                    url: w.url,
                    type: w.type.name
                    }
                webmarks<< webmark
                end
            end
            unless c.cats.empty?
              c.cats.each do |cat|
                children = {
                  id: cat.id, 
                  name: cat.name
                }
                childrens << children
              end
            end
            temp = {
              id:  c.id.to_i,
              name: c.name,
              parentId: c.cat_id.to_i,
              childrens: childrens,
              webmarks: webmarks
            }
            @data << temp
          end
        render json: @data
    end
end