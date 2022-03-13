### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 39448f03-a002-4fac-89fa-e020752bbe97
using PlutoUI

# ╔═╡ 7f1d9052-a20e-11ec-0407-3d005a4d4ca4
md" ## 0308 통계전산 practice "

# ╔═╡ 3e7d6c7e-1997-4657-9fd0-2b7445288fdd


# ╔═╡ d0b1ba05-18c4-4f99-87a1-99a28b3cd252
md"### 플루토의 특징 "

# ╔═╡ 6a6597b9-9f7b-43f4-b792-e837c0e168bd
"Pluto는 인터렉티브 하다 -> 다른 줄에서  변수의 값을 바꾸면 미리 선언된 같은 변수가 자동으로 바뀐다. "

# ╔═╡ 1df9b462-1b1b-4a28-a566-f944e3dbc847
md" 여러 줄의 코드를 작성하는 방법"

# ╔═╡ bad2a7c4-988a-45ff-9554-8f1960ebcff5
begin
	a=1
	a=a+3
	a=a+1
	a
end 

# ╔═╡ 88d6edaf-0825-4efc-b5ea-d365ccc3bdf9
md" 현재 a의 값은 $a 입니다" 

# ╔═╡ 1c705acf-a35f-4c0c-ab50-ce6e47212245
#$a를 입력하면 현재  a의 값이 보인다.#

# ╔═╡ 65e19821-cf74-476f-a391-e52f39de6623


# ╔═╡ d3c357c0-7c1d-4bc1-8efb-e39b2327b0d6
md"### 위젯 사용 방법(PlutoUI)"

# ╔═╡ ac6e92e3-e48c-42e5-9e7a-aa4dec02b104
md"### 1.라디오버튼"

# ╔═╡ bfbc1f9b-81b0-4b61-b05d-00335f3d22bd
@bind grade Radio(["1학년","2학년","3학년","4학년"]) 
#classmate에 내가 클릭한 결과가 변수가 저장된다.

# ╔═╡ 397c7f4b-3510-42f9-ae6f-801f7b4eedac
grade

# ╔═╡ 43538c4a-3a7e-47f8-bc6e-10122adff85c
if grade=="1학년"
	md"# 당신은 1학년입니다 "
else 
	md"# 당신은 1학년이 아닙니다."

# ╔═╡ 5941768c-1a44-4153-9919-556e83e01892
md" 나의 학년: $grade"

# ╔═╡ 332a0ecf-f6b8-4b36-afcf-60298dd3653d


# ╔═╡ 3c31db5e-c92a-49e9-9bd9-88e919626e62
md" ## 체크박스"

# ╔═╡ 1e914217-c743-4670-95d7-0cb9ea457b0e
@bind checkbox1 CheckBox() #CheckBox를 만들고 체크박스의 선택결과는 checkbox1에 저장한다.

# ╔═╡ eb77ef77-5c25-4cfd-9674-7dcb28944601
checkbox1 #체크박스가 체크되어 있으면 true이고, 아니면 false 이다.

# ╔═╡ 87b9ae46-e7f5-4bbd-af27-011b6e1316fd
if checkbox1
	md"체크박스상태가 $checkbox1 이네요  ->당신은 체크박스를 선택했습니다"
else md"체크박스상태가 $checkbox1 이네요 ->->당신은 체크박스를 선택하지 않았습니다" 
end

# ╔═╡ 65b4df12-bb07-4060-8ff1-4dc43d095fad
md"## 글상자"

# ╔═╡ 7d1804cd-e5d4-4da2-bb54-5e57624061ce
@bind textbox TextField() #글상자를 만들고 textbox에 내용을 저장

# ╔═╡ 4bf3b55d-7b99-47f8-b19d-b959e7c1150e
textbox

# ╔═╡ 4bfdcca6-673b-4b9b-b3e4-8d4a5b44f7d3
lowercase(textbox) #textbox의 대문자를 소문자로 보여줌

# ╔═╡ 9e5e2a4f-204b-44a6-964c-4e4a5f6d1165
md"### 커다란 글상자"

# ╔═╡ 6d7e2ec6-efca-4c54-95b5-2ca764ee5513
@bind textbox2 TextField((30,3)) #기존 글상자에 ()의 값을 입력

# ╔═╡ 18ed11cd-b607-4ab3-ae6f-6e80e3196230
textbox2

# ╔═╡ dee1c0db-bd30-40c6-93d0-07d586b421de


# ╔═╡ 10efc046-fd81-4420-82bd-d4758e6d89c9


# ╔═╡ e6a2e148-a944-465f-b1d0-d3a86795225e


# ╔═╡ 7bcafbdb-dc21-454d-9f7a-6b088e8cf286


# ╔═╡ de6395fc-bf8e-4c6a-b895-b7946d846917


# ╔═╡ b4c24bac-7680-48f1-958f-4844c5e758ff


# ╔═╡ 9c0353f7-99eb-45ea-ae69-814971628591


# ╔═╡ 10e26093-fd37-4a80-87fc-a3bc39978adf


# ╔═╡ 799bf032-dc53-4a82-83db-762d1d04e1a2


# ╔═╡ 76de3c96-c27b-487f-8528-0d26021c4d1d


# ╔═╡ 6b086f6d-860a-4ec7-8cc9-1db4279f2c6c


# ╔═╡ 9a70a147-1827-430e-a09f-dd2841314742


# ╔═╡ 8b3aa15a-410f-4860-b194-cdb7776bdd8b


# ╔═╡ b19ace00-8f23-46d8-9e7c-b8a617c65a53


# ╔═╡ bb694b8c-5e16-4cb7-8328-86a905649dfc


# ╔═╡ cd69978e-788e-47f2-8897-fccfad9a3598


# ╔═╡ 42a8852f-0a7b-44ab-9378-b34b186cdfad


# ╔═╡ 7b25f071-d851-4ab6-b9b2-7681aaf1acd0


# ╔═╡ 7b5dcd85-bbaf-4f3e-a11b-50d669ddcb89


# ╔═╡ dacb6fec-f9a9-4d1d-b365-caadd511b80f


# ╔═╡ 30c54259-4c8b-43e0-8198-3fb13814fb02


# ╔═╡ acb052ed-13ee-44e0-b87d-7655173185f5


# ╔═╡ 1ce5782e-b374-46f7-b8c9-49068484dd61


# ╔═╡ 2de0fb8b-04d3-42bc-9fff-1e8474b1105c


# ╔═╡ 929f02c3-4edf-4b97-9715-177d770eab3b


# ╔═╡ c545a0e1-c231-476f-820a-784e538f6220


# ╔═╡ c0b23c6d-16f0-4f63-b962-32dcfa08b83b


# ╔═╡ a3855072-a22a-4f92-a2e6-06e2e600bdad


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.37"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "bf0a1121af131d9974241ba53f601211e9303a9e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.37"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═7f1d9052-a20e-11ec-0407-3d005a4d4ca4
# ╠═3e7d6c7e-1997-4657-9fd0-2b7445288fdd
# ╠═d0b1ba05-18c4-4f99-87a1-99a28b3cd252
# ╠═6a6597b9-9f7b-43f4-b792-e837c0e168bd
# ╠═1df9b462-1b1b-4a28-a566-f944e3dbc847
# ╠═bad2a7c4-988a-45ff-9554-8f1960ebcff5
# ╠═88d6edaf-0825-4efc-b5ea-d365ccc3bdf9
# ╠═1c705acf-a35f-4c0c-ab50-ce6e47212245
# ╠═65e19821-cf74-476f-a391-e52f39de6623
# ╠═d3c357c0-7c1d-4bc1-8efb-e39b2327b0d6
# ╠═39448f03-a002-4fac-89fa-e020752bbe97
# ╠═ac6e92e3-e48c-42e5-9e7a-aa4dec02b104
# ╠═bfbc1f9b-81b0-4b61-b05d-00335f3d22bd
# ╠═397c7f4b-3510-42f9-ae6f-801f7b4eedac
# ╠═43538c4a-3a7e-47f8-bc6e-10122adff85c
# ╠═5941768c-1a44-4153-9919-556e83e01892
# ╠═332a0ecf-f6b8-4b36-afcf-60298dd3653d
# ╠═3c31db5e-c92a-49e9-9bd9-88e919626e62
# ╠═1e914217-c743-4670-95d7-0cb9ea457b0e
# ╠═eb77ef77-5c25-4cfd-9674-7dcb28944601
# ╠═87b9ae46-e7f5-4bbd-af27-011b6e1316fd
# ╠═65b4df12-bb07-4060-8ff1-4dc43d095fad
# ╠═7d1804cd-e5d4-4da2-bb54-5e57624061ce
# ╠═4bf3b55d-7b99-47f8-b19d-b959e7c1150e
# ╠═4bfdcca6-673b-4b9b-b3e4-8d4a5b44f7d3
# ╠═9e5e2a4f-204b-44a6-964c-4e4a5f6d1165
# ╠═6d7e2ec6-efca-4c54-95b5-2ca764ee5513
# ╠═18ed11cd-b607-4ab3-ae6f-6e80e3196230
# ╠═dee1c0db-bd30-40c6-93d0-07d586b421de
# ╠═10efc046-fd81-4420-82bd-d4758e6d89c9
# ╠═e6a2e148-a944-465f-b1d0-d3a86795225e
# ╠═7bcafbdb-dc21-454d-9f7a-6b088e8cf286
# ╠═de6395fc-bf8e-4c6a-b895-b7946d846917
# ╠═b4c24bac-7680-48f1-958f-4844c5e758ff
# ╠═9c0353f7-99eb-45ea-ae69-814971628591
# ╠═10e26093-fd37-4a80-87fc-a3bc39978adf
# ╠═799bf032-dc53-4a82-83db-762d1d04e1a2
# ╠═76de3c96-c27b-487f-8528-0d26021c4d1d
# ╠═6b086f6d-860a-4ec7-8cc9-1db4279f2c6c
# ╠═9a70a147-1827-430e-a09f-dd2841314742
# ╠═8b3aa15a-410f-4860-b194-cdb7776bdd8b
# ╠═b19ace00-8f23-46d8-9e7c-b8a617c65a53
# ╠═bb694b8c-5e16-4cb7-8328-86a905649dfc
# ╠═cd69978e-788e-47f2-8897-fccfad9a3598
# ╠═42a8852f-0a7b-44ab-9378-b34b186cdfad
# ╠═7b25f071-d851-4ab6-b9b2-7681aaf1acd0
# ╠═7b5dcd85-bbaf-4f3e-a11b-50d669ddcb89
# ╠═dacb6fec-f9a9-4d1d-b365-caadd511b80f
# ╠═30c54259-4c8b-43e0-8198-3fb13814fb02
# ╠═acb052ed-13ee-44e0-b87d-7655173185f5
# ╠═1ce5782e-b374-46f7-b8c9-49068484dd61
# ╠═2de0fb8b-04d3-42bc-9fff-1e8474b1105c
# ╠═929f02c3-4edf-4b97-9715-177d770eab3b
# ╠═c545a0e1-c231-476f-820a-784e538f6220
# ╠═c0b23c6d-16f0-4f63-b962-32dcfa08b83b
# ╠═a3855072-a22a-4f92-a2e6-06e2e600bdad
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
