macro define_getters(getters)
  {% for obj in getters %}
    def get_{{obj.id}}
      puts {{ "Got " + obj }}
    end
  {% end %}
end

define_getters ["cool", "super"]

get_cool
get_super