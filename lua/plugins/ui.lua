return  { {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('everforest').setup({
        background = 'hard',
        on_highlights = function(hl, palette)
          local keyword = { fg = palette.orange }
          local comment = { link = "Comment" }
          local fg = { link = "Fg" }
          local string = { link = "Green"}
          local field = { link = "Purple" }
          local func = { link = "Blue" }
          local number = { link = "Blue"}

          hl["@annotation"] = { link = "TSAnnotation" }
          hl["@attribute"] = { link = "TSAttribute" }
          hl["@boolean.yaml"] = { link = "yamlTSBoolean" }
          hl["@boolean"] = { link = "Fg"}
          hl["@character"] = { link = "TSCharacter" }
          hl["@character.special"] = { link = "TSCharacterSpecial" }
          hl["@comment"] = comment
          hl["@comment.error"] = comment -- Used to be @text.danger
          hl["@comment.note"] = comment
          hl["@comment.todo"] = comment
          hl["@comment.warning"] = comment
          hl["@conceal"] = { link = "Grey" }
          hl["@conditional"] = { link = "TSConditional" }
          hl["@constant"] = { link = "TSConstant" }
          hl["@constant.builtin"] = { link = "TSConstBuiltin" }
          hl["@constant.builtin.go"] = { link = "goTSConstBuiltin" }
          hl["@constant.builtin.yaml"] = { link = "yamlTSConstBuiltin" }
          hl["@constant.macro"] = { link = "TSConstMacro" }
          hl["@constant.regex"] = { link = "TSConstBuiltin" }
          hl["@constructor"] = { link = "TSConstructor" }
          hl["@constructor.lua"] = { link = "luaTSConstructor" }
          hl["@constructor.tsx"] = { link = "tsxTSConstructor" }
          hl["@debug"] = { link = "TSDebug" }
          hl["@define"] = { link = "TSDefine" }
          hl["@diff.delta"] = { link = "diffChanged" }
          hl["@diff.minus"] = { link = "diffRemoved" }
          hl["@diff.plus"] = { link = "diffAdded" }
          hl["@error"] = { link = "TSError" } -- This has been removed from nvim-treesitter
          hl["@exception"] = { link = "TSException" }
          hl["@field"] = field
          hl["@field.yaml"] = { link = "yamlTSField" }
          hl["@float"] = { link = "TSFloat" }
          hl["@function"] = fg 
          hl["@function.builtin"] = fg
          hl["@function.call"] = fg 
          hl["@function.macro"] = fg
          hl["@function.method"] = fg
          hl["@function.method.call"] = fg 
          hl["@include"] = { link = "TSInclude" }
          hl["@include.go"] = { link = "goTSInclude" }
          hl["@include.javascript"] = { link = "javascriptTSInclude" }
          hl["@include.typescript"] = { link = "typescriptTSInclude" }
          hl["@keyword"] = keyword
          hl["@keyword.conditional"] = keyword
          hl["@keyword.debug"] = keyword
          hl["@keyword.directive"] = keyword
          hl["@keyword.directive.define"] = keyword
          hl["@keyword.exception"] = keyword
          hl["@keyword.function"] = {fg = palette.blue}
          hl["@keyword.import"] = keyword
          hl["@keyword.import.go"] = keyword
          hl["@keyword.import.javascript"] = keyword
          hl["@keyword.import.typescript"] = keyword
          hl["@keyword.modifier"] = keyword
          hl["@keyword.operator"] = keyword 
          hl["@keyword.repeat"] = keyword
          hl["@keyword.return"] = keyword
          hl["@keyword.storage"] = keyword
          hl["@label"] = { link = "TSLabel" }
          hl["@label.json"] = { link = "jsonTSLabel" }
          hl["@markup.emphasis"] = { link = "TSEmphasis" }
          hl["@markup.environment"] = { link = "TSEnvironment" }
          hl["@markup.environment.name"] = { link = "TSEnvironmentName" }
          hl["@markup.heading"] = { link = "TSTitle" }
          hl["@markup.heading.1.markdown"] = { link = "markdownH1" }
          hl["@markup.heading.2.markdown"] = { link = "markdownH2" }
          hl["@markup.heading.3.markdown"] = { link = "markdownH3" }
          hl["@markup.heading.4.markdown"] = { link = "markdownH4" }
          hl["@markup.heading.5.markdown"] = { link = "markdownH5" }
          hl["@markup.heading.6.markdown"] = { link = "markdownH6" }
          hl["@markup.heading.1.marker.markdown"] = { link = "@conceal" }
          hl["@markup.heading.2.marker.markdown"] = { link = "@conceal" }
          hl["@markup.heading.3.marker.markdown"] = { link = "@conceal" }
          hl["@markup.heading.4.marker.markdown"] = { link = "@conceal" }
          hl["@markup.heading.5.marker.markdown"] = { link = "@conceal" }
          hl["@markup.heading.6.marker.markdown"] = { link = "@conceal" }
          hl["@markup.link"] = { link = "TSTextReference" }
          hl["@markup.link.label"] = { link = "TSStringSpecial" }
          hl["@markup.link.url"] = { link = "TSURI" }
          hl["@markup.list"] = { link = "TSPunctSpecial" }
          hl["@markup.list.checked"] = { link = "Green" }
          hl["@markup.list.unchecked"] = { link = "Ignore" }
          hl["@markup.math"] = { link = "TSMath" }
          hl["@markup.quote"] = { link = "Grey" }
          hl["@markup.raw"] = { link = "TSLiteral" }
          hl["@markup.strike"] = { link = "TSStrike" }
          hl["@markup.strong"] = { link = "TSStrong" }
          hl["@markup.underline"] = { link = "TSUnderline" }
          hl["@math"] = { link = "Blue" }
          hl["@method"] = { link = "Blue" }
          hl["@method.call"] = { link = "Fg" }
          hl["@module"] = { link = "TSNamespace" }
          hl["@module.go"] = { link = "goTSNamespace" }
          hl["@namespace"] = fg 
          hl["@namespace.go"] = { link = "goTSNamespace" }
          hl["@none"] = { link = "TSNone" }
          hl["@number"] = number 
          hl["@number.float"] = number
          hl["@operator"] = fg
          hl["@parameter"] = { link = "TSParameter" }
          hl["@parameter.reference"] = { link = "TSParameterReference" }
          hl["@preproc"] = { link = "TSPreProc" }
          hl["@property"] = field 
          hl["@property.toml"] = field 
          hl["@punctuation.bracket"] = { link = "TSPunctBracket" }
          hl["@punctuation.bracket.regex"] = { link = "TSStringRegex" }
          hl["@punctuation.delimiter"] = { link = "TSPunctDelimiter" }
          hl["@punctuation.special"] = { link = "TSPunctSpecial" }
          hl["@repeat"] = { link = "TSRepeat" }
          hl["@storageclass"] = { link = "TSStorageClass" }
          hl["@storageclass.lifetime"] = { link = "TSStorageClassLifetime" }
          hl["@strike"] = { link = "TSStrike" }
          hl["@string"] = string
          hl["@string.escape"] = keyword 
          hl["@string.escape.json"] = string
          hl["@string.escape.yaml"] = string
          hl["@string.json"] = string
          hl["@string.regex"] = string
          hl["@string.regexp"] = string
          hl["@string.special"] = string
          hl["@string.special.symbol"] = string
          hl["@string.special.url"] = string
          hl["@string.toml"] = string
          hl["@string.yaml"] = string
          hl["@symbol"] = { link = "TSSymbol" }
          hl["@tag"] = { link = "TSTag" }
          hl["@tag.attribute"] = { link = "TSTagAttribute" }
          hl["@tag.delimiter"] = { link = "TSTagDelimiter" }
          hl["@text"] = { link = "TSText" }
          hl["@text.danger"] = { link = "TSDanger" }
          hl["@text.diff.add"] = { link = "diffAdded" }
          hl["@text.diff.delete"] = { link = "diffRemoved" }
          hl["@text.emphasis"] = { link = "TSEmphasis" }
          hl["@text.environment"] = { link = "TSEnvironment" }
          hl["@text.environment.name"] = { link = "TSEnvironmentName" }
          hl["@text.gitcommit"] = { link = "TSNone" }
          hl["@text.html"] = { link = "htmlTSText" }
          hl["@text.literal"] = { link = "TSLiteral" }
          hl["@text.math"] = { link = "TSMath" }
          hl["@text.note"] = { link = "TSNote" }
          hl["@text.reference"] = { link = "TSTextReference" }
          hl["@text.strike"] = { link = "TSStrike" }
          hl["@text.strong"] = { link = "TSStrong" }
          hl["@text.title"] = { link = "TSTitle" }
          hl["@text.todo"] = { link = "TSTodo" }
          hl["@text.todo.checked"] = { link = "Green" }
          hl["@text.todo.unchecked"] = { link = "Ignore" }
          hl["@text.underline"] = { link = "TSUnderline" }
          hl["@text.uri"] = { link = "TSURI" }
          hl["@text.warning"] = { link = "TSWarning" }
          hl["@todo"] = { link = "TSTodo" }
          hl["@type"] = fg
          hl["@type.builtin"] = keyword 
          hl["@type.definition"] = { link = "TSTypeDefinition" }
          hl["@type.qualifier"] = { link = "TSTypeQualifier" }
          hl["@uri"] = { link = "TSURI" }
          hl["@variable"] = { link = "TSVariable" }
          hl["@variable.builtin"] = { link = "TSVariableBuiltin" }
          hl["@variable.member"] = field
          hl["@variable.member.yaml"] = { link = "yamlTSField" }
          hl["@variable.parameter"] = { link = "TSParameter" }


          -- My own
          hl["@constant.builtin.java"] = keyword 
          hl["@lsp.mod.documentation.java"] = fg 

          -- LSP Semantic token highlights
          hl["@lsp.type.boolean"] = { link = "@boolean" }
          hl["@lsp.type.builtinConstant"] = { link = "@constant.builtin" }
          hl["@lsp.type.builtinType"] = { link = "@type.builtin" }
          hl["@lsp.type.class"] = { link = "@type" }
          hl["@lsp.type.comment"] = { link = "@comment" }
          hl["@lsp.type.decorator"] = { link = "@function" }
          hl["@lsp.type.derive"] = { link = "@constructor" }
          hl["@lsp.type.deriveHelper"] = { link = "@attribute" }
          hl["@lsp.type.enum"] = { link = "@type" }
          hl["@lsp.type.enumMember"] = { link = "@property" }
          hl["@lsp.type.escapeSequence"] = { link = "@string.escape" }
          hl["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" }
          hl["@lsp.type.function"] = { link = "@function" }
          hl["@lsp.type.generic"] = { link = "@text" }
          hl["@lsp.type.interface"] = { link = "@type" }
          hl["@lsp.type.keyword"] = { link = "@keyword" }
          hl["@lsp.type.lifetime"] = { link = "@storageclass.lifetime" }
          hl["@lsp.type.macro"] = { link = "@constant.macro" }
          hl["@lsp.type.magicFunction"] = { link = "@function.builtin" }
          hl["@lsp.type.method"] = fg 
          hl["@lsp.type.modifier"] = { link = "@type.qualifier" }
          hl["@lsp.type.namespace"] = { link = "@namespace" }
          hl["@lsp.type.namespace.go"] = { link = "@namespace.go" }
          hl["@lsp.type.number"] = { link = "@number" }
          hl["@lsp.type.operator"] = { link = "@operator" }
          hl["@lsp.type.parameter"] = { link = "@parameter" }
          hl["@lsp.type.property"] = { link = "@property" }
          hl["@lsp.type.regexp"] = { link = "@string.regex" }
          hl["@lsp.type.selfKeyword"] = { link = "@variable.builtin" }
          hl["@lsp.type.selfTypeKeyword"] = { link = "@type" }
          hl["@lsp.type.string"] = { link = "@string" }
          hl["@lsp.type.struct"] = { link = "@type" }
          hl["@lsp.type.type"] = { link = "@type" }
          hl["@lsp.type.typeAlias"] = { link = "@type.definition" }
          hl["@lsp.type.typeParameter"] = { link = "@type.definition" }
          hl["@lsp.type.variable"] = { link = "@variable" }
          hl["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" }
          hl["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" }
          hl["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" }
          hl["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" }
          hl["@lsp.typemod.function.readonly"] = { link = "@method" } 
          hl["@lsp.typemod.keyword.async"] = { link = "@keyword" }
          hl["@lsp.typemod.keyword.injected"] = { link = "@keyword" }
          hl["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" }
          hl["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" }
          hl["@lsp.typemod.method.readonly"] = { link = "@method" }
          hl["@lsp.typemod.operator.injected"] = { link = "@operator" }
          hl["@lsp.typemod.string.injected"] = { link = "@string" }
          hl["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" }
          hl["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" }
          hl["@lsp.typemod.typeAlias.defaultLibrary"] = { link = "@type.builtin" }
          hl["@lsp.typemod.variable.callable"] = { link = "@function" }
          hl["@lsp.typemod.variable.constant.rust"] = { link = "@constant" }
          hl["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" }
          hl["@lsp.typemod.variable.defaultLibrary.go"] = { link = "@constant.builtin.go" }
          hl["@lsp.typemod.variable.defaultLibrary.javascript"] = { link = "@constant.builtin" }
          hl["@lsp.typemod.variable.defaultLibrary.javascriptreact"] = { link = "@constant.builtin" }
          hl["@lsp.typemod.variable.defaultLibrary.typescript"] = { link = "@constant.builtin" }
          hl["@lsp.typemod.variable.defaultLibrary.typescriptreact"] = { link = "@constant.builtin" }
          hl["@lsp.typemod.variable.injected"] = { link = "@variable" }
          hl["@lsp.typemod.variable.static"] = { link = "Red" }
       end,
      })
    end,
  },
  { 
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'everforest',
        component_separators = '|',
        section_separators = '',
      }
    },
  }
}
