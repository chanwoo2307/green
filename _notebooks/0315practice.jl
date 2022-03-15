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
