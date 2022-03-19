### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 99dc2d57-73c6-4dcb-b7bc-8e6ebe43e7ca
using CalculusWithJulia

# ╔═╡ a1d2c677-e5fd-481e-aee9-5e87117fa916
using Plots

# ╔═╡ 4fc833b0-a467-11ec-04c5-61fe210806e8
md"### matrix 자세히"

# ╔═╡ d9754372-0499-4b42-afeb-ef32bbda8cc1
md"`-` 선언하는 방법" 

# ╔═╡ d364b262-0fb4-4926-a680-764446469b4b
[1 2 3; 4 5 6] # ;는 엔터처럼 생각해도 된다.

# ╔═╡ 9d5639bb-dce3-434b-abc5-b6d6d5975aaa
[1 2 3
 4 5 6] #방법 2

# ╔═╡ def50522-fa46-43b4-8bb4-6cacf8ad79a8
[
	1 2 3   #방법 3
	4 5 6
]

# ╔═╡ a61c0894-d62f-40e5-91c3-b2567b3b2233
md"`-` 1x4 matrix = length가 4인 row-vector 행벡터 선언"

# ╔═╡ d9d7c19f-c295-40a9-9b40-f6aa4a543200
[1 2 3 4] #기호가 없거나 짝수개이면 행벡터 이다.

# ╔═╡ 655cb01c-d87e-413b-ac46-0b9c32d232f7
[1 ;; 2;; 3;; 4] #방법 2

# ╔═╡ 004405ec-da25-4146-b485-bd681fbbaeff
md"`-` 4x1 matrix = length가 4인 col-vector 열 벡터선언"

# ╔═╡ 533581ca-7963-414a-a33c-e771d86b8cc2
[1;2;3;4] #방법 1 #기호가 한개있으면 열 벡터 선언

# ╔═╡ 8a523bdc-17f1-4d20-93ed-3523ce7a107e
[1,2,3,4] #방법 2

# ╔═╡ a84d7701-7b97-4060-83ff-dd2bf0ac0030
[
	1
	2
	3
	4
]

# ╔═╡ cbd188a8-06c6-4a15-b8fa-0fa2c569b1b7
md" (4,2)벡터 선언과 잘못된 방법 선언"

# ╔═╡ 20863b96-6038-4bec-b296-4a6cd700e8e5
[1 2;2 3; 3 4; 4 5]

# ╔═╡ d370e98a-ee74-4672-9a6c-a21fca404eee
[1 2,2 3, 3, 4, 4 5] #이 방법은 잘 못된 방법이다.

# ╔═╡ b65ce2aa-a2d8-4098-8905-7817e562a027
[
	1 2
	2 3
	3 4
	4 5
]

# ╔═╡ df9b876a-9ce6-4596-9763-7f45f4eefceb
md"벡터의 곱셈"

# ╔═╡ feaf8337-64d0-466b-b799-f006eb97b871
md"`곱셈`"

# ╔═╡ 75648574-782b-480f-80e0-1c877d709961
[1 0; 0 1]

# ╔═╡ ef803cdf-0a01-4577-a474-b93bdb6287c1
[1,2]

# ╔═╡ 176a6f2d-63fe-4967-842e-f32e2be29f76


# ╔═╡ 4d87e6be-328d-4004-a689-31f774a543c2
[1 0 ; 0 1]*[1,2]

# ╔═╡ d98661c2-a63d-4a0c-b796-2daab6cb3d91
[1,2]*[1 0 ; 0 1] # 에레 메세지의 교훈 [1,2]는 열벡터이다.

# ╔═╡ d6a28479-3e9b-4f92-92d3-6c01ed348c5f
md"`-` 트랜스포즈"

# ╔═╡ 2ba56411-7f68-41fe-8b1b-3dfa63ab3dbe
md"(연산자 사용)"

# ╔═╡ f9086129-ed3c-42f5-9414-6b8d72c36f86
[1 2; 3 4 ]

# ╔═╡ 5a475d17-9df6-4ba1-a08d-c302ebbd6721
[1 2; 3 4]' #트랜스포즈

# ╔═╡ f761c73e-abeb-482c-a5e6-2da32faef86e
[1,2,3,4]

# ╔═╡ d4475e96-73c8-44d1-81ed-affc28c05d82
[1,2,3,4]'

# ╔═╡ cb5e7809-1056-455a-b12e-ce3aeaa2523e
md"복잡한 방법"

# ╔═╡ e188a712-9d26-4ae8-8242-ad619059a107
adjoint([1 2;3 4])

# ╔═╡ 4ad0bd2d-98e5-42e5-a428-1f2202d3c973
md""" 
`-` hcat, vcat " 
- hcat=(cbind)=좌우로 붙인다.
- vcat(rbind) = 위 아래로 붙인다.
"""

# ╔═╡ 4051f3d7-148f-4134-a033-bcc5d14b8859
hcat([1,2,3],[4,5,6]) # 3*1 col-vec (hat) 3*1 col-vec => 3*2 matrix

# ╔═╡ a0d94030-0035-48ce-a172-82542f557c0b
hcat([1,2,3],[4,5,6],[7,8,9]) 
#3*1 col-vec (hat) 3*1 col-vec (hat) 3*1 col-vec => 3*3 matrix

# ╔═╡ 4eb47f90-59f7-4da7-8850-ea7ae0a3a933
hcat([1 2; 3 4; 5 6],[10,20,30]) ##3*2 matrix (hat) 3*1 col-vec => 3*3 matrix

# ╔═╡ 982cfca8-55bb-418b-a4dd-c821bff49d7c
hcat([1 2; 3 4; 5 6],[7 8 9])
#3*2 matrix (hat) 1*3 row-vec => 불가능

# ╔═╡ 3f35ce65-a517-4e26-8f3c-d33c80ea61aa
vcat([1 2 3],[4 5 6])
# 1*3 row-vec vcat 1*3 row-vec => 2*3 matrix 

# ╔═╡ 4ff73b0d-2300-4179-98a4-0458cc33546b
hcat(vcat([1 2 3],[4 5 6]),[1 ,2])
# 1*3 row-vec vcat 1*3 row-vec => 2*3 matrix 
#2*3 matrix hcat  2*1 col-vec => 2*4  matrix

# ╔═╡ 10aca34d-58d6-450c-96ec-04a90b9dd205
vcat(hcat(vcat([1 2 3],[4 5 6]),[1 ,2]),[1 2 3 4 ])
# 1*3 row-vec vcat 1*3 row-vec => 2*3 matrix 
#2*3 matrix hcat  2*1 col-vec => 2*4 matrix
#2*4 matrix vcat 1*4 row-vec => 4*4 matrix

# ╔═╡ 327d505d-ee2f-49ae-a6e6-ba3c96d04ea6
md"""
`-` hcat,vcat의 더 쉬운 사용방법
"""

# ╔═╡ 572a391d-854f-4a5f-8138-0d9773065c17
[[1,2,3] [4,5,6]] #hcat(A,B)=[A B]

# ╔═╡ 5339cfbb-ced5-4da9-b39c-9e726d9e25f2
[[1,2,3] ; [4, 5, 6]]

# ╔═╡ 827a401a-cc5a-488d-82da-6b61b59e65cb
[[1 2 3; 4 5 6] ; [7 8 9]] #vcat(A,B) = [A ;B]

# ╔═╡ a4ba490e-f1d2-4b1d-93d5-2b6d1a3197fe
a1 = [1 2
	  3 4]

# ╔═╡ 65bede25-e659-4e8f-8346-95f3ae0fb5f6
a2 =[5
	6]

# ╔═╡ c1060e63-b944-4487-91bd-c2451d21166a
a3= [7 8]

# ╔═╡ 9a19cc62-a6bc-463b-a06d-3500f643b95b
[
	a1 a2   # 합치기
	a3 9
]

# ╔═╡ 4fca9299-ae04-4968-85bb-eb6cbaabbe86
md" reshape"

# ╔═╡ 6db36fb6-026e-44a4-858e-46d759b91a5e
reshape(1:6,(3,2)) #1부터 6을 (3,2)의 matrix로 바꿔라

# ╔═╡ 8285a315-f453-4e6c-9025-23af4d3843aa
reshape([1,2,3,4,5,6],(2,3))

# ╔═╡ eeb572d2-74b2-436a-9fd4-b00cc3f0c633
reshape(1:8, (2,2,2)) #3차원

# ╔═╡ edc612a9-86a4-45f3-ba2e-3615bdedd2f9
reshape(1:24, (2,2,2,3)) #4차원

# ╔═╡ 6041089c-c5fe-4d20-97ec-9781a5102d86
md"### 벡터와 매트릭스(자투리)"

# ╔═╡ 7daba03f-82c0-4251-a949-860ff0092ce8
md"##### Range"

# ╔═╡ dae9b882-c273-472a-ae59-808df92c2af4
1:3

# ╔═╡ 995ba2bb-a34d-4c8d-b1e0-cc564c4968ba
typeof(1:3)

# ╔═╡ eb8b9773-8f7f-4e6c-842c-97a949505539
Array(1:3)

# ╔═╡ 290933f4-2a21-4b7b-9c0d-09ba6a87bd39
typeof(Array(1:3))

# ╔═╡ d545096b-486a-49d4-8f49-e99b8e224fe3
Array(1:3:10) # 1부터 10까지 3칸씩 띄어라

# ╔═╡ b23420bb-60b4-4e32-b41a-827699534d73
md"`-` range도 연산이 가능하다"

# ╔═╡ 9557c7c2-ee61-4ef8-9c7e-a6e358ee74d6
(1:3)+(1:3)

# ╔═╡ 90e87be7-ca4f-42aa-9e16-d1d7a25f9f29
Array((1:3)+(1:3)) 
#   1 2 3
#  +1 2 3 
# = 2 4 6  (2 4 6)은 2:2:6으로 표현가능하다

# ╔═╡ 9535d350-fc59-4126-b3c1-d0b5888c2091
(1:3) .+1
#    1 2 3
#   +1 1 1
#   =2 3 4 따라서 (2:4)

# ╔═╡ 410427bf-162a-493d-a3f8-d5c5129873f8
(1:3) .*2 .+100

# ╔═╡ 0d985f69-5d09-44a5-9867-9845b405e728
Array((1:3) .*2 .+100)

# ╔═╡ 289f82de-bdaf-4cdb-aafc-1178233f7ee6
md"### index"

# ╔═╡ ace60dea-b369-4ae0-bad3-92b6a6b20a44
md"`-` 1차원으로 인덱싱"

# ╔═╡ f119efd9-cb71-4ca0-adbe-8b3cd900d4e7
A= [1 2 3; 4 5 6; 7 8 9]

# ╔═╡ d34495bd-3d30-49cb-ad32-bfe30441d2e2
A[1]

# ╔═╡ 61a353c4-63ae-418a-9c11-6a0fd22ff304
A[6] #위에서 아래로 왼쪽에서 오른쪽으로 가면서 숫자가 증가한다.

# ╔═╡ 8c4ce37f-5026-4ba8-a382-8f21dab22b3d
A[1:6]

# ╔═╡ c74d480c-68fc-4b7e-94c6-faf5835533dd
A[[1,3,5,7]]

# ╔═╡ a103d084-d696-4094-9c13-3e86799494e4
md"`-` 2차원으로 인덱싱"

# ╔═╡ ec6ccc09-11b1-48a7-877c-d20ddb06a49a
A[:,1] #첫번째 col

# ╔═╡ 9a479ed5-d4b8-44a1-86ca-3a708420e2a5
A[:,[1]] #첫번째 col

# ╔═╡ e57f170f-90ea-42f2-b3ec-c37f5b7e3848
A[1,:] # 첫번째 row

# ╔═╡ a942eea0-dd79-4e40-9ef2-edb9fb43440c
A[[1],:] 

# ╔═╡ 1c235ca5-0a1e-4aeb-b61b-a5a8ddbbc60d
A[[1,3],:]

# ╔═╡ 68001296-f668-4567-a142-84b9d1e1fbf9
A[[1,3],2] #(첫번째 row, 세번째 row )==> 두번째 컬럼

# ╔═╡ e50ad260-8c12-4c0f-a976-51f4570d6f83
A[[1,3],[2]]

# ╔═╡ 71cb3d7e-baa9-49ca-a954-dc3fca9e9974
md"`-` 고차원"

# ╔═╡ 08a5c78b-e65d-4e27-8f3b-9830dfb99555
B=reshape(1:36,(3,3,2,2))

# ╔═╡ 318b84d4-53df-4d3f-b39d-6c313cd82795
B[1:2 , 2:3, 1, :] # 1:2= 1,2행  2:3 = 2,3 열, 1 = [:,:, 1] 세번째가 1인 것들, : 나머지 모두

# ╔═╡ 01d9db53-f845-418f-b5a5-41db5fa21096
B[1:2,[1,3], :, 1]

# ╔═╡ 12961cfc-3e98-4cf1-bf60-a44ba5303cbc
md"`-` 로지칼인덱싱"

# ╔═╡ 065283f9-5608-41da-8f7f-8706da33b838
a=[1,2,3,4]

# ╔═╡ 3307ac93-8f12-46dd-a1a6-a6c9674fa51e
a[[true,false,true,false]]

# ╔═╡ 3ae87bf3-8d24-4363-af85-334304a09a6c
a.>2

# ╔═╡ d85a0827-12e8-41d1-a466-672d6c25af3d
a[a.>2]

# ╔═╡ 45007772-237e-450c-ac63-3269f63dc9c4
md"### 함수선언"

# ╔═╡ 833f2e24-f722-4767-a90e-4189fb34acf4
md"`-` 스타일1"

# ╔═╡ e2a5e157-2214-4239-8094-4a9eb1522ff2
function f1(x,y)
	return √(x^2+y^2) #return 명시
end

# ╔═╡ 67104e85-2ab9-4cd1-b338-2d09cd3d3198
f1(1,3)

# ╔═╡ eedf71e0-629e-4b88-b162-0c67072cbc38
md"`-` 스타일 2"

# ╔═╡ f4866c2b-fd1e-4f51-9023-fb8ca6048268
function f2(x,y)
 √(x^2+y^2) #return 명시
end

# ╔═╡ 9c9392ac-bcd9-409b-a710-cc21ccc07aba
f2(1,1)

# ╔═╡ b5d1e097-60e3-4311-91ea-61baa7c17697
md"`-` 스타일3"

# ╔═╡ c5287b9f-86eb-4811-8e41-0e0f8e4b2a12
function f3(x,y)
 a=x^2+y^2 #return 명시
	√a
end

# ╔═╡ 12ed0ebe-ec0d-4558-a69a-931d8e0e0a82
f3(1,1)

# ╔═╡ 378db58d-3538-41ec-8f24-1d15dd137b26
md"`-` 스타일4"

# ╔═╡ 85ef81d0-1ab1-447f-9b04-55394c318fc2
f4(x,y)= √(x^2+y^2)

# ╔═╡ 8f98d730-dcc3-455e-8e3f-ef3aed223a0e
f4(1,1)

# ╔═╡ 512e6db0-a6e4-4221-86c6-f7a2d0038c9d
md"`-` 스타일 5"

# ╔═╡ e5fcf102-02e2-491e-b8ed-7f00337d4930
((x,y) -> √(x^2+y^2))(1,1)

# ╔═╡ 0cf6d7d0-148b-4d75-8440-a0419ca8b1d6
md"`-` 합성함수"

# ╔═╡ c2f0f436-5c9a-4087-a43b-5d7e1a5890c0
f=(x ->3x) ∘ (x -> x+1) #f(x)=3(x+1)라는 의미

# ╔═╡ bf2c918e-c0a9-4c4d-b7a1-8a681865090b
f(2)

# ╔═╡ f125f90d-c9a5-4dd7-b830-d21c63a423d8
md"### 숙제"

# ╔═╡ 960b0bd6-86b8-4fbe-9c63-bfedd857e64e
md" 함수 $$f(x)=(x-1)^2$$ 를 합성함수를 이용하여 선언하고 $(x,f(x))$의 그래프를 $x \in (-1,3)$의 범위에서 그려서 제출 "

# ╔═╡ 7eda2a01-fcde-4da9-b054-f59fdafaa6c4
md"$x \in (-1,3)$ 일 경우, (x,f(x))의 그래프를 그려서 제출"

# ╔═╡ 165428d1-224a-4056-94e2-394ac03cf09e
#1. (x-1)을 하는 함수를 만듬

# ╔═╡ e61d9fa4-5c96-4640-ab95-05340d292839
#2. x^2을 하는 함수를 만듬

# ╔═╡ 30667964-ee3f-419f-b3f6-567a94ac1997
function1= (x ->x^2)∘(x -> x-1)

# ╔═╡ 576529af-6b4d-4ba7-b314-ae0d74c3cbf5
plot(function1, -1,3)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CalculusWithJulia = "a2e0e22d-7d4c-5312-9169-8b992201a882"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"

[compat]
CalculusWithJulia = "~0.0.16"
Plots = "~1.27.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "af92965fb30777147966f58acb05da51c5616b5f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.ArrayInterface]]
deps = ["Compat", "IfElse", "LinearAlgebra", "Requires", "SparseArrays", "Static"]
git-tree-sha1 = "d49f55ff9c7ee06930b0f65b1df2bfa811418475"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "4.0.4"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.CalculusWithJulia]]
deps = ["Base64", "Contour", "EllipsisNotation", "ForwardDiff", "HCubature", "IntervalSets", "JSON", "LaTeXStrings", "LinearAlgebra", "Markdown", "Mustache", "Pkg", "PlotUtils", "Random", "RecipesBase", "Reexport", "Requires", "Roots", "SpecialFunctions", "SplitApplyCombine", "Test"]
git-tree-sha1 = "b834e6120fac2989276a2a5afbd38defdc786a32"
uuid = "a2e0e22d-7d4c-5312-9169-8b992201a882"
version = "0.0.16"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c9a6160317d1abe9c44b3beb367fd448117679ca"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.13.0"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "12fc73e5e0af68ad3137b886e3f7c1eacfca2640"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.17.1"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[deps.Combinatorics]]
git-tree-sha1 = "08c8b6831dc00bfea825826be0bc8336fc369860"
uuid = "861a8166-3701-5b0c-9a16-15d98fcdc6aa"
version = "1.0.2"

[[deps.CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[deps.CommonSubexpressions]]
deps = ["MacroTools", "Test"]
git-tree-sha1 = "7b8a93dba8af7e3b42fecabf646260105ac373f7"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.0"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "96b0bc6c52df76506efc8a441c6cf1adcb1babc4"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.42.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[deps.Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[deps.DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3daef5523dd2e769dad2365274f760ff5f282c7d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.11"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.Dictionaries]]
deps = ["Indexing", "Random"]
git-tree-sha1 = "63004a55faf43a5f7be7f5eca36ce355e9a75b2c"
uuid = "85a47980-9c8c-11e8-2b9f-f7ca1fa99fb4"
version = "0.3.18"

[[deps.DiffResults]]
deps = ["StaticArrays"]
git-tree-sha1 = "c18e98cba888c6c25d1c3b048e4b3380ca956805"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.0.3"

[[deps.DiffRules]]
deps = ["IrrationalConstants", "LogExpFunctions", "NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "dd933c4ef7b4c270aacd4eb88fa64c147492acf0"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.10.0"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[deps.EllipsisNotation]]
deps = ["ArrayInterface"]
git-tree-sha1 = "d7ab55febfd0907b285fbf8dc0c73c0825d9d6aa"
uuid = "da5c29d0-fa7d-589e-88eb-ea29b0a81949"
version = "1.3.0"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ae13fcbc7ab8f16b0856729b050ef0c446aa3492"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.4+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "d8a578692e3077ac998b50c0217dfd67f21d1e5f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.0+0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "LogExpFunctions", "NaNMath", "Preferences", "Printf", "Random", "SpecialFunctions", "StaticArrays"]
git-tree-sha1 = "1bd6fc0c344fc0cbee1f42f8d2e7ec8253dda2d2"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "0.10.25"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "51d2dfe8e590fbd74e7a842cf6d13d8a2f45dc01"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.6+0"

[[deps.GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "RelocatableFolders", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "9f836fb62492f4b0f0d3b06f55983f2704ed0883"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.64.0"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "a6c850d77ad5118ad3be4bd188919ce97fffac47"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.64.0+0"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "83ea630384a13fc4f002b77690bc0afeb4255ac9"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.2"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "a32d672ac2c967f3deb8a81d828afc739c838a06"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HCubature]]
deps = ["Combinatorics", "DataStructures", "LinearAlgebra", "QuadGK", "StaticArrays"]
git-tree-sha1 = "134af3b940d1ca25b19bc9740948157cee7ff8fa"
uuid = "19dc6840-f33b-545b-b366-655c7e3ffd49"
version = "1.5.0"

[[deps.HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "0fa77022fe4b511826b39c894c90daf5fce3334a"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.17"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.IfElse]]
git-tree-sha1 = "debdd00ffef04665ccbb3e150747a77560e8fad1"
uuid = "615f187c-cbe4-4ef1-ba3b-2fcf58d6d173"
version = "0.1.1"

[[deps.Indexing]]
git-tree-sha1 = "ce1566720fd6b19ff3411404d4b977acd4814f9f"
uuid = "313cdc1a-70c2-5d6a-ae34-0150d3930a38"
version = "1.1.1"

[[deps.IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.IntervalSets]]
deps = ["Dates", "EllipsisNotation", "Statistics"]
git-tree-sha1 = "3cc368af3f110a767ac786560045dceddfc16758"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.5.3"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "91b5dcf362c5add98049e6c29ee756910b03051d"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.3"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "4f00cc36fede3c04b8acf9b2e2763decfdcecfa6"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.13"

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

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "c9551dd26e31ab17b86cbd00c2ede019c08758eb"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.3.0+1"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "58f25e56b706f95125dcb796f39e1fb01d913a71"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.10"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.Mustache]]
deps = ["Printf", "Tables"]
git-tree-sha1 = "bfbd6fb946d967794498790aa7a0e6cdf1120f41"
uuid = "ffc61752-8dc7-55ee-8c37-f3e9cdd09e70"
version = "1.0.13"

[[deps.NaNMath]]
git-tree-sha1 = "b086b7ea07f8e38cf122f5016af580881ac914fe"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "0.3.7"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "648107615c15d4e09f7eca16307bc821c1f718d8"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.13+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Requires", "Statistics"]
git-tree-sha1 = "a3a964ce9dc7898193536002a6dd892b1b5a6f1d"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "2.0.1"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "bb16469fd5224100e422f0b027d26c5a25de1200"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.2.0"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "9213b4c18b57b7020ee20f33a4ba49eb7bef85e0"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.27.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "d3538e7f8a790dc8903519090857ef8e1283eecd"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.5"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "ad368663a5e20dbb8d6dc2fddeefe4dae0781ae8"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+0"

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "78aadffb3efd2155af139781b8a8df1ef279ea39"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.4.2"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "995a812c6f7edea7527bb570f0ac39d0fb15663c"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.5.1"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "cdbd3b1338c72ce29d9584fdbe9e9b70eeb5adca"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "0.1.3"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "554149b8b82e167c1fa79df99aeabed4f8404119"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.15"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "38d88503f695eb0301479bc9b0d4320b378bafe5"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.2"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "cbf21db885f478e4bd73b286af6e67d1beeebe4c"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "1.8.4"

[[deps.SplitApplyCombine]]
deps = ["Dictionaries", "Indexing"]
git-tree-sha1 = "35efd62f6f8d9142052d9c7a84e35cd1f9d2db29"
uuid = "03a91e81-4c3e-53e1-a0a4-9c0c8f19dd66"
version = "1.2.1"

[[deps.Static]]
deps = ["IfElse"]
git-tree-sha1 = "65068e4b4d10f3c31aaae2e6cb92b6c6cedca610"
uuid = "aedffcd0-7271-4cad-89d0-dc628f76c6d3"
version = "0.5.6"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "74fb527333e72ada2dd9ef77d98e4991fb185f04"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.4.1"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "c3d8ba7f3fa0625b062b82853a7d5229cb728b6b"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.2.1"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "8977b17906b0a1cc74ab2e3a05faa16cf08a8291"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.16"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "57617b34fa34f91d536eb265df67c2d4519b8b98"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.5"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "5ce79ce186cc678bbb5c5681ca3379d1ddae11a1"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.7.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "34db80951901073501137bdbc3d5a8e7bbd06670"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.1.2"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "ece2350174195bb31de1a63bea3a41ae1aa593b6"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "0.9.1+5"
"""

# ╔═╡ Cell order:
# ╠═4fc833b0-a467-11ec-04c5-61fe210806e8
# ╠═d9754372-0499-4b42-afeb-ef32bbda8cc1
# ╠═d364b262-0fb4-4926-a680-764446469b4b
# ╠═9d5639bb-dce3-434b-abc5-b6d6d5975aaa
# ╠═def50522-fa46-43b4-8bb4-6cacf8ad79a8
# ╠═a61c0894-d62f-40e5-91c3-b2567b3b2233
# ╠═d9d7c19f-c295-40a9-9b40-f6aa4a543200
# ╠═655cb01c-d87e-413b-ac46-0b9c32d232f7
# ╠═004405ec-da25-4146-b485-bd681fbbaeff
# ╠═533581ca-7963-414a-a33c-e771d86b8cc2
# ╠═8a523bdc-17f1-4d20-93ed-3523ce7a107e
# ╠═a84d7701-7b97-4060-83ff-dd2bf0ac0030
# ╠═cbd188a8-06c6-4a15-b8fa-0fa2c569b1b7
# ╠═20863b96-6038-4bec-b296-4a6cd700e8e5
# ╠═d370e98a-ee74-4672-9a6c-a21fca404eee
# ╠═b65ce2aa-a2d8-4098-8905-7817e562a027
# ╠═df9b876a-9ce6-4596-9763-7f45f4eefceb
# ╠═feaf8337-64d0-466b-b799-f006eb97b871
# ╠═75648574-782b-480f-80e0-1c877d709961
# ╠═ef803cdf-0a01-4577-a474-b93bdb6287c1
# ╠═176a6f2d-63fe-4967-842e-f32e2be29f76
# ╠═4d87e6be-328d-4004-a689-31f774a543c2
# ╠═d98661c2-a63d-4a0c-b796-2daab6cb3d91
# ╠═d6a28479-3e9b-4f92-92d3-6c01ed348c5f
# ╠═2ba56411-7f68-41fe-8b1b-3dfa63ab3dbe
# ╠═f9086129-ed3c-42f5-9414-6b8d72c36f86
# ╠═5a475d17-9df6-4ba1-a08d-c302ebbd6721
# ╠═f761c73e-abeb-482c-a5e6-2da32faef86e
# ╠═d4475e96-73c8-44d1-81ed-affc28c05d82
# ╠═cb5e7809-1056-455a-b12e-ce3aeaa2523e
# ╠═e188a712-9d26-4ae8-8242-ad619059a107
# ╠═4ad0bd2d-98e5-42e5-a428-1f2202d3c973
# ╠═4051f3d7-148f-4134-a033-bcc5d14b8859
# ╠═a0d94030-0035-48ce-a172-82542f557c0b
# ╠═4eb47f90-59f7-4da7-8850-ea7ae0a3a933
# ╠═982cfca8-55bb-418b-a4dd-c821bff49d7c
# ╠═3f35ce65-a517-4e26-8f3c-d33c80ea61aa
# ╠═4ff73b0d-2300-4179-98a4-0458cc33546b
# ╠═10aca34d-58d6-450c-96ec-04a90b9dd205
# ╠═327d505d-ee2f-49ae-a6e6-ba3c96d04ea6
# ╠═572a391d-854f-4a5f-8138-0d9773065c17
# ╠═5339cfbb-ced5-4da9-b39c-9e726d9e25f2
# ╠═827a401a-cc5a-488d-82da-6b61b59e65cb
# ╠═a4ba490e-f1d2-4b1d-93d5-2b6d1a3197fe
# ╠═65bede25-e659-4e8f-8346-95f3ae0fb5f6
# ╠═c1060e63-b944-4487-91bd-c2451d21166a
# ╠═9a19cc62-a6bc-463b-a06d-3500f643b95b
# ╠═4fca9299-ae04-4968-85bb-eb6cbaabbe86
# ╠═6db36fb6-026e-44a4-858e-46d759b91a5e
# ╠═8285a315-f453-4e6c-9025-23af4d3843aa
# ╠═eeb572d2-74b2-436a-9fd4-b00cc3f0c633
# ╠═edc612a9-86a4-45f3-ba2e-3615bdedd2f9
# ╠═6041089c-c5fe-4d20-97ec-9781a5102d86
# ╠═7daba03f-82c0-4251-a949-860ff0092ce8
# ╠═dae9b882-c273-472a-ae59-808df92c2af4
# ╠═995ba2bb-a34d-4c8d-b1e0-cc564c4968ba
# ╠═eb8b9773-8f7f-4e6c-842c-97a949505539
# ╠═290933f4-2a21-4b7b-9c0d-09ba6a87bd39
# ╠═d545096b-486a-49d4-8f49-e99b8e224fe3
# ╠═b23420bb-60b4-4e32-b41a-827699534d73
# ╠═9557c7c2-ee61-4ef8-9c7e-a6e358ee74d6
# ╠═90e87be7-ca4f-42aa-9e16-d1d7a25f9f29
# ╠═9535d350-fc59-4126-b3c1-d0b5888c2091
# ╠═410427bf-162a-493d-a3f8-d5c5129873f8
# ╠═0d985f69-5d09-44a5-9867-9845b405e728
# ╠═289f82de-bdaf-4cdb-aafc-1178233f7ee6
# ╠═ace60dea-b369-4ae0-bad3-92b6a6b20a44
# ╠═f119efd9-cb71-4ca0-adbe-8b3cd900d4e7
# ╠═d34495bd-3d30-49cb-ad32-bfe30441d2e2
# ╠═61a353c4-63ae-418a-9c11-6a0fd22ff304
# ╠═8c4ce37f-5026-4ba8-a382-8f21dab22b3d
# ╠═c74d480c-68fc-4b7e-94c6-faf5835533dd
# ╠═a103d084-d696-4094-9c13-3e86799494e4
# ╠═ec6ccc09-11b1-48a7-877c-d20ddb06a49a
# ╠═9a479ed5-d4b8-44a1-86ca-3a708420e2a5
# ╠═e57f170f-90ea-42f2-b3ec-c37f5b7e3848
# ╠═a942eea0-dd79-4e40-9ef2-edb9fb43440c
# ╠═1c235ca5-0a1e-4aeb-b61b-a5a8ddbbc60d
# ╠═68001296-f668-4567-a142-84b9d1e1fbf9
# ╠═e50ad260-8c12-4c0f-a976-51f4570d6f83
# ╠═71cb3d7e-baa9-49ca-a954-dc3fca9e9974
# ╠═08a5c78b-e65d-4e27-8f3b-9830dfb99555
# ╠═318b84d4-53df-4d3f-b39d-6c313cd82795
# ╠═01d9db53-f845-418f-b5a5-41db5fa21096
# ╠═12961cfc-3e98-4cf1-bf60-a44ba5303cbc
# ╠═065283f9-5608-41da-8f7f-8706da33b838
# ╠═3307ac93-8f12-46dd-a1a6-a6c9674fa51e
# ╠═3ae87bf3-8d24-4363-af85-334304a09a6c
# ╠═d85a0827-12e8-41d1-a466-672d6c25af3d
# ╠═45007772-237e-450c-ac63-3269f63dc9c4
# ╠═833f2e24-f722-4767-a90e-4189fb34acf4
# ╠═e2a5e157-2214-4239-8094-4a9eb1522ff2
# ╠═67104e85-2ab9-4cd1-b338-2d09cd3d3198
# ╠═eedf71e0-629e-4b88-b162-0c67072cbc38
# ╠═f4866c2b-fd1e-4f51-9023-fb8ca6048268
# ╠═9c9392ac-bcd9-409b-a710-cc21ccc07aba
# ╠═b5d1e097-60e3-4311-91ea-61baa7c17697
# ╠═c5287b9f-86eb-4811-8e41-0e0f8e4b2a12
# ╠═12ed0ebe-ec0d-4558-a69a-931d8e0e0a82
# ╠═378db58d-3538-41ec-8f24-1d15dd137b26
# ╠═85ef81d0-1ab1-447f-9b04-55394c318fc2
# ╠═8f98d730-dcc3-455e-8e3f-ef3aed223a0e
# ╠═512e6db0-a6e4-4221-86c6-f7a2d0038c9d
# ╠═e5fcf102-02e2-491e-b8ed-7f00337d4930
# ╠═0cf6d7d0-148b-4d75-8440-a0419ca8b1d6
# ╠═c2f0f436-5c9a-4087-a43b-5d7e1a5890c0
# ╠═bf2c918e-c0a9-4c4d-b7a1-8a681865090b
# ╠═f125f90d-c9a5-4dd7-b830-d21c63a423d8
# ╠═960b0bd6-86b8-4fbe-9c63-bfedd857e64e
# ╠═7eda2a01-fcde-4da9-b054-f59fdafaa6c4
# ╠═165428d1-224a-4056-94e2-394ac03cf09e
# ╠═e61d9fa4-5c96-4640-ab95-05340d292839
# ╠═30667964-ee3f-419f-b3f6-567a94ac1997
# ╠═99dc2d57-73c6-4dcb-b7bc-8e6ebe43e7ca
# ╠═a1d2c677-e5fd-481e-aee9-5e87117fa916
# ╠═576529af-6b4d-4ba7-b314-ae0d74c3cbf5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
