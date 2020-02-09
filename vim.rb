
# Custom overrides for colors
overrides = {
  :debug => "\e[1;37;44m",

  :annotation => "\e[34m",
  :attribute_name => "\e[35m",
  :attribute_value => "\e[31m",
  :binary => {
    :self => "\e[31m",
    :char => "\e[1;31m",
    :delimiter => "\e[1;31m",
  },
  :char => {
    :self => "\e[35m",
    :delimiter => "\e[1;35m"
  },
  :class => "",
  :class_variable => "\e[36m",
  :color => "\e[32m",
  :comment => {
    :self => "\e[1;34m",
    :char => "\e[36m",
    :delimiter => "\e[36m",
  },
  :constant => "\e[1;34;4m",
  :decorator => "\e[35m",
  :definition => "\e[1;33m",
  :directive => "\e[33m",
  :docstring => "\e[31m",
  :doctype => "\e[1;34m",
  :done => "\e[1;30;2m",
  :entity => "\e[31m",
  :error => "\e[1;37;41m",
  :exception => "\e[1;31m",
  :float => "\e[1;35m",
  :function => "",
  :global_variable => "\e[1;32m",
  :hex => "\e[1;36m",
  :id => "\e[1;34m",
  :include => "\e[31m",
  :integer => "\e[1;34m",
  :imaginary => "\e[1;34m",
  :important => "\e[1;31m",
  :key => {
    :self => "\e[35m",
    :char => "\e[1;35m",
    :delimiter => "\e[1;35m",
  },
  :keyword => "\e[32m", # shared by if, public, static, return
  :label => "\e[1;33m",
  :local_variable => "\e[36m",
  :namespace => "\e[1;35m",
  :octal => "\e[1;34m",
  :operator => "\e[1;35m",
  :predefined => "", # no highlight
  :predefined_constant => "\e[1;36m",
  :predefined_type => "\e[1;32m",
  :preprocessor => "\e[1;36m",
  :pseudo_class => "\e[1;34m",
  :regexp => {
    :self => "\e[35m",
    :delimiter => "\e[1;35m",
    :modifier => "\e[35m",
    :char => "\e[1;35m",
  },
  :reserved => "\e[32m",
  :shell => {
    :self => "\e[33m",
    :char => "\e[1;33m",
    :delimiter => "\e[1;33m",
    :escape => "\e[1;33m",
  },
  :string => {
    :self => "\e[35m",
    :modifier => "\e[1;35m",
    :char => "\e[1;35m",
    :delimiter => "\e[1;35m",
    :escape => "\e[1;35m",
  },
  :symbol => {
    :self => "\e[33m",
    :delimiter => "\e[1;33m",
  },
  :tag => "\e[32m",
  :type => "\e[1;34m",
  :value => "\e[36m",
  :variable => "\e[34m",

  :insert => {
    :self => "\e[42m",
    :insert => "\e[1;32;42m",
    :eyecatcher => "\e[102m",
  },
  :delete => {
    :self => "\e[41m",
    :delete => "\e[1;31;41m",
    :eyecatcher => "\e[101m",
  },
  :change => {
    :self => "\e[44m",
    :change => "\e[37;44m",
  },
  :head => {
    :self => "\e[45m",
    :filename => "\e[37;45m"
  },
}
overrides.each do |key, value|
    CodeRay::Encoders::Terminal::TOKEN_COLORS[key] = value
end
