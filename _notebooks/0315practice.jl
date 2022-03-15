### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

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
md"`-` 스타일 4"

# ╔═╡ e5fcf102-02e2-491e-b8ed-7f00337d4930
((x,y) -> √(x^2+y^2))(1,1)

# ╔═╡ 0cf6d7d0-148b-4d75-8440-a0419ca8b1d6
md"`-` 합성함수"

# ╔═╡ c2f0f436-5c9a-4087-a43b-5d7e1a5890c0
f=(x ->3x) ∘ (x -> x+1)

# ╔═╡ bf2c918e-c0a9-4c4d-b7a1-8a681865090b
f(2)

# ╔═╡ f125f90d-c9a5-4dd7-b830-d21c63a423d8
md"### 숙제"

# ╔═╡ 960b0bd6-86b8-4fbe-9c63-bfedd857e64e
md" 함수 $$f(x)=(x-1)^2$$ 를 합성함수를 이용하여 선언하고 $(x,f(x))$의 그래프를 $x \in (-1,3)$의 범위에서 그려서 제출 "

# ╔═╡ a9604d53-9847-49ef-925a-1f9a7e00680b


# ╔═╡ 7eda2a01-fcde-4da9-b054-f59fdafaa6c4
md"$x \in (-1,3)$ 일 경우, (x,f(x))의 그래프를 그려서 제출"

# ╔═╡ 165428d1-224a-4056-94e2-394ac03cf09e


# ╔═╡ e61d9fa4-5c96-4640-ab95-05340d292839


# ╔═╡ 30667964-ee3f-419f-b3f6-567a94ac1997


# ╔═╡ 7ba53db8-383c-47b7-a8a5-4332b2aaee9b


# ╔═╡ 1fcd7691-d5ec-4972-b03f-ee158e870db2


# ╔═╡ 3b51c799-6fd2-426a-bfa9-af1dc04b2cf2


# ╔═╡ 5f2d92a7-12ba-4097-81da-a7342ed1e077


# ╔═╡ 697459d8-14d8-4017-8edd-861396d3f7b6


# ╔═╡ 48b16b41-0a84-4536-9077-bc53b6844403


# ╔═╡ b1cff612-66dd-462e-95ad-f0dbede3e297


# ╔═╡ b152e92d-afe4-43b1-878c-4a8f67fc5efe


# ╔═╡ 0ca2bc59-6758-410e-abf2-6625cdf85c2e


# ╔═╡ 4d67c74a-11e1-4e8c-8928-0e44a30432cf


# ╔═╡ 0f9d4b89-421d-4a8a-8b80-7174773dd80f


# ╔═╡ 4d24d35b-8167-4317-87ab-01f0f8c4ac25


# ╔═╡ 2cae82a9-be39-4533-878c-bbf5d85958e9


# ╔═╡ e61a2b05-7320-4b5a-98d8-8abdb0d43d00


# ╔═╡ 8441b9a8-3c0e-436e-b392-e0e8abe8103f


# ╔═╡ 397e1c9b-2d34-4153-9f10-897a80605fbb


# ╔═╡ 60ddf137-7a87-4063-9152-8e8e5bad4d77


# ╔═╡ ce5d30b1-f136-46d2-bcec-1a302e528c47


# ╔═╡ db9fea2d-fe8f-4259-98a2-baecb82318ce


# ╔═╡ 629360d7-8635-4aa1-ab67-df9036cd1598


# ╔═╡ c9ecb9f3-91f4-478a-9fd1-a9946e2d4da1


# ╔═╡ 02e3ea34-321e-41de-a3f6-894ac97f93c9


# ╔═╡ dfa2ec5f-0518-44ea-9928-eb15f3007f73


# ╔═╡ b526f747-ae39-4885-a4fa-7145ec0b6996


# ╔═╡ e4fd8cf7-931b-4dae-9fb9-ccf3375cd1d2


# ╔═╡ ce784830-ce54-4233-996e-5fae2852d0e8


# ╔═╡ f1f446b9-8a87-4926-902d-f01564f1c871


# ╔═╡ be6ad9e9-9223-4e59-8ff2-bb5dcbe18b6f


# ╔═╡ 86b7d7a6-130d-47f1-9a30-ff7b71bdb79e


# ╔═╡ e877292d-7887-4b9b-bc5d-cf1c5c887743


# ╔═╡ 2e1cf4e4-02a9-48b4-ab1e-b8ee1778a0ba


# ╔═╡ 153da1b6-6beb-4482-b716-3c6ce4f022cc


# ╔═╡ 084438f1-d162-442a-a406-e8538ba6f0d4


# ╔═╡ 5cfb3c3f-f3ea-4d80-bec7-c1c2d0f20e33


# ╔═╡ fe771c3e-a259-4945-81d2-8039e75e8099


# ╔═╡ d98628c8-cdfe-4338-85b0-f4451f8767c4


# ╔═╡ e943bfec-2b00-466c-ba7a-be30945e2974


# ╔═╡ f1412599-4d2d-448c-865f-cfe5fd33d791


# ╔═╡ 22ac2d7b-8cb2-4fdb-af9b-3de96886cfa2


# ╔═╡ 4e0b9640-27c8-4467-8c24-7ab66061db73


# ╔═╡ 160425cb-154d-49fd-ae08-d6af572aab6d


# ╔═╡ 42e8544a-c28d-4c2f-9d15-0fa5004200bc


# ╔═╡ 121a40c4-2c3b-48ff-bbe8-21fe7349c37f


# ╔═╡ daf0db19-0302-4015-b07e-f0714f3670f4


# ╔═╡ 4efca468-2c74-4cc6-bce8-8e8fbd892389


# ╔═╡ e6b3238b-1c92-4ecb-b44f-0a805eb3c167


# ╔═╡ 2aef5ecb-3127-4605-a18c-c06989658a57


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
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
# ╠═a9604d53-9847-49ef-925a-1f9a7e00680b
# ╠═7eda2a01-fcde-4da9-b054-f59fdafaa6c4
# ╠═165428d1-224a-4056-94e2-394ac03cf09e
# ╠═e61d9fa4-5c96-4640-ab95-05340d292839
# ╠═30667964-ee3f-419f-b3f6-567a94ac1997
# ╠═7ba53db8-383c-47b7-a8a5-4332b2aaee9b
# ╠═1fcd7691-d5ec-4972-b03f-ee158e870db2
# ╠═3b51c799-6fd2-426a-bfa9-af1dc04b2cf2
# ╠═5f2d92a7-12ba-4097-81da-a7342ed1e077
# ╠═697459d8-14d8-4017-8edd-861396d3f7b6
# ╠═48b16b41-0a84-4536-9077-bc53b6844403
# ╠═b1cff612-66dd-462e-95ad-f0dbede3e297
# ╠═b152e92d-afe4-43b1-878c-4a8f67fc5efe
# ╠═0ca2bc59-6758-410e-abf2-6625cdf85c2e
# ╠═4d67c74a-11e1-4e8c-8928-0e44a30432cf
# ╠═0f9d4b89-421d-4a8a-8b80-7174773dd80f
# ╠═4d24d35b-8167-4317-87ab-01f0f8c4ac25
# ╠═2cae82a9-be39-4533-878c-bbf5d85958e9
# ╠═e61a2b05-7320-4b5a-98d8-8abdb0d43d00
# ╠═8441b9a8-3c0e-436e-b392-e0e8abe8103f
# ╠═397e1c9b-2d34-4153-9f10-897a80605fbb
# ╠═60ddf137-7a87-4063-9152-8e8e5bad4d77
# ╠═ce5d30b1-f136-46d2-bcec-1a302e528c47
# ╠═db9fea2d-fe8f-4259-98a2-baecb82318ce
# ╠═629360d7-8635-4aa1-ab67-df9036cd1598
# ╠═c9ecb9f3-91f4-478a-9fd1-a9946e2d4da1
# ╠═02e3ea34-321e-41de-a3f6-894ac97f93c9
# ╠═dfa2ec5f-0518-44ea-9928-eb15f3007f73
# ╠═b526f747-ae39-4885-a4fa-7145ec0b6996
# ╠═e4fd8cf7-931b-4dae-9fb9-ccf3375cd1d2
# ╠═ce784830-ce54-4233-996e-5fae2852d0e8
# ╠═f1f446b9-8a87-4926-902d-f01564f1c871
# ╠═be6ad9e9-9223-4e59-8ff2-bb5dcbe18b6f
# ╠═86b7d7a6-130d-47f1-9a30-ff7b71bdb79e
# ╠═e877292d-7887-4b9b-bc5d-cf1c5c887743
# ╠═2e1cf4e4-02a9-48b4-ab1e-b8ee1778a0ba
# ╠═153da1b6-6beb-4482-b716-3c6ce4f022cc
# ╠═084438f1-d162-442a-a406-e8538ba6f0d4
# ╠═5cfb3c3f-f3ea-4d80-bec7-c1c2d0f20e33
# ╠═fe771c3e-a259-4945-81d2-8039e75e8099
# ╠═d98628c8-cdfe-4338-85b0-f4451f8767c4
# ╠═e943bfec-2b00-466c-ba7a-be30945e2974
# ╠═f1412599-4d2d-448c-865f-cfe5fd33d791
# ╠═22ac2d7b-8cb2-4fdb-af9b-3de96886cfa2
# ╠═4e0b9640-27c8-4467-8c24-7ab66061db73
# ╠═160425cb-154d-49fd-ae08-d6af572aab6d
# ╠═42e8544a-c28d-4c2f-9d15-0fa5004200bc
# ╠═121a40c4-2c3b-48ff-bbe8-21fe7349c37f
# ╠═daf0db19-0302-4015-b07e-f0714f3670f4
# ╠═4efca468-2c74-4cc6-bce8-8e8fbd892389
# ╠═e6b3238b-1c92-4ecb-b44f-0a805eb3c167
# ╠═2aef5ecb-3127-4605-a18c-c06989658a57
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
