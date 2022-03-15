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
 4 5 6]

# ╔═╡ def50522-fa46-43b4-8bb4-6cacf8ad79a8
[
	1 2 3   #방법 3
	4 5 6
]

# ╔═╡ a61c0894-d62f-40e5-91c3-b2567b3b2233
md"`-` 1x4 matrix = length가 4인 row-vector 선언"

# ╔═╡ d9d7c19f-c295-40a9-9b40-f6aa4a543200
[1 2 3 4]

# ╔═╡ 655cb01c-d87e-413b-ac46-0b9c32d232f7
[1 ;; 2;; 3;; 4] #방법 2

# ╔═╡ 004405ec-da25-4146-b485-bd681fbbaeff
md"`-` 4x1 matrix = length가 4인 col-vector 선언"

# ╔═╡ 533581ca-7963-414a-a33c-e771d86b8cc2
[1;2;3;4] #방법 1 #기호가 한개있으면 열 벡터 선언

# ╔═╡ 8a523bdc-17f1-4d20-93ed-3523ce7a107e
[1,2,3,4]

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
[1 2,2 3, 3, 4, 4 5]

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
md"`곰셈`"

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
[1 2; 3 4]'

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
hcat([1,2,3],[4,5,6])

# ╔═╡ a0d94030-0035-48ce-a172-82542f557c0b
hcat([1,2,3],[4,5,6],[7,8,9]) 
#3*1 col-vec (hat) 3*1 col-vec (hat) 3*1 col-vec => 3*3 matrix

# ╔═╡ 4eb47f90-59f7-4da7-8850-ea7ae0a3a933
hcat([1 2; 3 4; 5 6],[10,20,30])

# ╔═╡ 982cfca8-55bb-418b-a4dd-c821bff49d7c
hcat([1 2; 3 4; 5 6],[7 8 9])

# ╔═╡ 3f35ce65-a517-4e26-8f3c-d33c80ea61aa
vcat([1 2 3],[4 5 6])
# 1*4 row-vec vcat 1*4 row-vec => 2*4 matrix 

# ╔═╡ 4ff73b0d-2300-4179-98a4-0458cc33546b
hcat(vcat([1 2 3],[4 5 6]),[1 ,2])
# 1*4 row-vec vcat 1*4 row-vec => 2*4 matrix 
#2*4 matrix hcat  2*1

# ╔═╡ 10aca34d-58d6-450c-96ec-04a90b9dd205
vcat(hcat(vcat([1 2 3],[4 5 6]),[1 ,2]),[1 2 3 4 ])
# 1*4 row-vec vcat 1*4 row-vec => 2*4 matrix 
#2*4 matrix hcat  2*1

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

# ╔═╡ 0400a18c-fb24-4398-ad5e-fc4dfcc69998
reshape([1:6],(2,3))

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
# ╠═0400a18c-fb24-4398-ad5e-fc4dfcc69998
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
