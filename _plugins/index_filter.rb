module Jekyll
  module IndexFilter
    def replace_index(input)
      input.to_s.split('.').map(&:to_i).reject{|n| n == 0}.reduce('') do |t, n|
        t + n.to_s + '.'
      end
    end

    def count_levels(input)
      input.to_s.split('.').map(&:to_i).reject{|n| n == 0}.count
    end
  end
end

Liquid::Template.register_filter(Jekyll::IndexFilter)