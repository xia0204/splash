function main(splash, args)
  local get_div_count = splash:jsfunc([[
    function () {
      var body = document.body;
      var divs = body.getElementsByTagName('div');
      return divs.length;
    }
  ]])

  splash:go(args.url)
  return string.format("There are %s DIVs in %s",
      get_div_count(), args.url)
end
