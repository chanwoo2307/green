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

# ╔═╡ f9086129-ed3c-42f5-9414-6b8d72c36f86
[1 2; 3 4 ]

# ╔═╡ 5a475d17-9df6-4ba1-a08d-c302ebbd6721
[1 2; 3 4]'

# ╔═╡ f761c73e-abeb-482c-a5e6-2da32faef86e
[1,2,3,4]

# ╔═╡ d4475e96-73c8-44d1-81ed-affc28c05d82
[1,2,3,4]'

# ╔═╡ cb5e7809-1056-455a-b12e-ce3aeaa2523e


# ╔═╡ feb9e21d-02e1-4195-a675-8a6a5b8be328


# ╔═╡ 25cb0fa0-3199-4b14-a608-8fb54fb1f1a4


# ╔═╡ 00cb1f24-4621-41b9-8c4b-408910738759


# ╔═╡ b3a73af8-8a86-43bc-b9ef-26a3b0487a37


# ╔═╡ 3e6d36d7-19a5-4134-abb0-936380f3efef


# ╔═╡ a0f1f08a-9427-4168-ba5f-a3bcc23b9233


# ╔═╡ ea8f4f10-f659-4b3c-8edb-474b6d434cbf


# ╔═╡ 16a67816-50e9-4b3c-88c7-28323a21969d


# ╔═╡ 3ed64d5f-9e5f-4fdb-b4ee-fb710abf5c52


# ╔═╡ 03461a5f-fcac-4032-a60a-3594870aeba9


# ╔═╡ 637cee49-7ba8-4ee7-a5e1-10e00c0cb6ad


# ╔═╡ e004b294-b396-4700-9e86-8eaf9086cbf5


# ╔═╡ 5aa03a70-3918-40f2-b764-9f5fba0a270f


# ╔═╡ 5bd38d3c-392a-4ac2-9b39-f693bf9cfbc9


# ╔═╡ 0aa954af-60f5-412c-87c9-2688bd1c80bc


# ╔═╡ 227f5fcf-c805-412c-939a-0f39be6a7d1b


# ╔═╡ c7122ab5-8c2f-4341-a4b7-f582b83d3015


# ╔═╡ f39c601a-e8a8-4029-9c77-2e84ec1a6f02


# ╔═╡ b6c56844-b594-4cc4-ad6d-05e818a466a3


# ╔═╡ f8a35f23-61a1-473e-8b0c-3f956f1459eb


# ╔═╡ 87f18836-4ace-4a60-927f-6b87cef60527


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
# ╠═f9086129-ed3c-42f5-9414-6b8d72c36f86
# ╠═5a475d17-9df6-4ba1-a08d-c302ebbd6721
# ╠═f761c73e-abeb-482c-a5e6-2da32faef86e
# ╠═d4475e96-73c8-44d1-81ed-affc28c05d82
# ╠═cb5e7809-1056-455a-b12e-ce3aeaa2523e
# ╠═feb9e21d-02e1-4195-a675-8a6a5b8be328
# ╠═25cb0fa0-3199-4b14-a608-8fb54fb1f1a4
# ╠═00cb1f24-4621-41b9-8c4b-408910738759
# ╠═b3a73af8-8a86-43bc-b9ef-26a3b0487a37
# ╠═3e6d36d7-19a5-4134-abb0-936380f3efef
# ╠═a0f1f08a-9427-4168-ba5f-a3bcc23b9233
# ╠═ea8f4f10-f659-4b3c-8edb-474b6d434cbf
# ╠═16a67816-50e9-4b3c-88c7-28323a21969d
# ╠═3ed64d5f-9e5f-4fdb-b4ee-fb710abf5c52
# ╠═03461a5f-fcac-4032-a60a-3594870aeba9
# ╠═637cee49-7ba8-4ee7-a5e1-10e00c0cb6ad
# ╠═e004b294-b396-4700-9e86-8eaf9086cbf5
# ╠═5aa03a70-3918-40f2-b764-9f5fba0a270f
# ╠═5bd38d3c-392a-4ac2-9b39-f693bf9cfbc9
# ╠═0aa954af-60f5-412c-87c9-2688bd1c80bc
# ╠═227f5fcf-c805-412c-939a-0f39be6a7d1b
# ╠═c7122ab5-8c2f-4341-a4b7-f582b83d3015
# ╠═f39c601a-e8a8-4029-9c77-2e84ec1a6f02
# ╠═b6c56844-b594-4cc4-ad6d-05e818a466a3
# ╠═f8a35f23-61a1-473e-8b0c-3f956f1459eb
# ╠═87f18836-4ace-4a60-927f-6b87cef60527
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
