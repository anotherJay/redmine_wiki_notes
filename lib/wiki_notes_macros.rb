module WikiNotesMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a note to the wiki page:\n\n" +
      " @!{{note(text)}}@\n" +
      " @!{{tip(text)}}@\n" +
      " @!{{important(text)}}@\n"
      " @!{{warning(text)}}@\n"

    macro :note do |obj, args, text|
      o = '<div class="noteclassic">'
      o << (args.empty? && !text.empty? ? textilizable(text) : textilizable(args.join(","))) 
      o << '</div>'
      o.html_safe
    end

    macro :tip do |obj, args, text|
      o = '<div class="notetip">'
      o << (args.empty? && !text.empty? ? textilizable(text) : textilizable(args.join(","))) 
      o << '</div>'
      o.html_safe
    end

    macro :important do |obj, args, text|
      o = '<div class="noteimportant">'
      o << (args.empty? && !text.empty? ? textilizable(text) : textilizable(args.join(","))) 
      o << '</div>'
      o.html_safe
    end

    macro :warning do |obj, args, text|
      o = '<div class="notewarning">'
      o << (args.empty? && !text.empty? ? textilizable(text) : textilizable(args.join(","))) 
      o << '</div>'
      o.html_safe
    end
  end
end
