#coding: utf-8

coverage = Hash.new { |h, k| h[k] = [] }
lang_map = Hash[*%w[
                c   C
                clj Clojure
                hs  Haskell
                js  JavaScript
                py  Python
                rb  Ruby
                sh  Shell
                vim Vim
                asm Whitespace]]

lang_map.each do |ext, lang|
  Dir["#{ext}/*"].entries.each do |e|
    coverage[ext] << e[/\d+/].to_i
  end
end

table = ''
table <<  lang_map.values.unshift('\#').join('|') + "\n"
table << ([':-:'] * lang_map.size.succ).join('|') + "\n"

done = coverage.values.flatten.uniq
done.sort.each do |d|
  table << "#{d}|"
  table << coverage.keys.map { |k|
    link = "[✓](#{k}/#{d}.#{k})"
    coverage[k].include?(d) ? link : ''
  }.join('|') + "\n"
end

totals = coverage.map { |c| c[1].size }
totals.unshift "**#{totals.reduce :+}**"
table << totals.join('|') + "\n"

puts table
