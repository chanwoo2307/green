### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 0427af5a-a14a-11ec-3cd4-a92623da9071
md"# 3월 10일 통계전산"

# ╔═╡ 423bcae3-9d56-4b75-91a8-9e6411eb2df3


# ╔═╡ 03d197c0-534a-4a84-ae44-570885cadee7
md"# 변수"

# ╔═╡ f1205397-2f27-49c6-ae4f-f92c0122bd5a
x=1.0

# ╔═╡ 2accb946-ae01-4b53-926e-6df942bb938c
md"# 수학적 기호와 같은 변수 사용하는 방법"

# ╔═╡ 5816bab8-0a50-4e3c-b985-78555470c0f4
α =3 # \alpha + tap 버튼을 누르면 된다.

# ╔═╡ bec73ac1-3746-47de-953c-2a9a2664520d
β = 4 #\beta + tap  버튼을 누른다.

# ╔═╡ d42e8e3e-87c0-427b-814c-b5ae7fa2f052
β̂= 4.0 #\beta + tap 을 하고 다시 \hat 을 입력후 tap을 누른다.

# ╔═╡ eb4820ca-4d1d-46ba-833c-bec6bc7fb82b
ℯ #\euler 

# ╔═╡ c6dd1d4c-e391-4554-b86c-bb888f0747cd
π # \pi + tap

# ╔═╡ d0aab87d-0503-4b80-b41f-850f1376345a


# ╔═╡ 1bdef2de-7054-4b99-8e3e-eea8d7457970
☼ = 3.0 #\sun + tap

# ╔═╡ f2308293-a1f4-4f43-b8b2-45963c45c3f8


# ╔═╡ 51c83c70-0ba3-4932-ad91-0547d73dcfe7
xₜ= 2.0 # x\_t 을 누르고 tap을 누른다.

# ╔═╡ 0a039a94-71da-407f-ba58-a10f1b2c2dac
♂ ="male " #\male + tap

# ╔═╡ b4dae09e-328e-4a0d-bdb6-232f2cd6db39
♀ = "female" #\female + tap

# ╔═╡ 9164a3e6-0a77-437a-b6f4-05b7a5ffa19e
정찬우= "Jeongchanwoo"

# ╔═╡ 12d2b2f2-ad54-4e9d-9b54-6300c4b42621
md"# 자료형 "

# ╔═╡ 27bc2e69-48ea-4360-9e1e-70be0d119538
123 # int형

# ╔═╡ 933a9ddb-7bdb-42d0-9627-026e836ec54c
123.123 # float 형

# ╔═╡ bbd673ee-f456-48da-8f84-11f27b783c93
[123]  #vectro 형

# ╔═╡ d6005975-5910-4424-b9f4-3fb74796414e

md" #  자료형을 보려면? "

# ╔═╡ 44c831d5-c933-44c0-9678-5f74d8eb2da0
typeof(123)

# ╔═╡ efc18e7f-dcee-41e5-baa3-41639512fcb9
typeof(123.123)

# ╔═╡ a52684e4-00d6-4983-bbe1-e6dd60151cda
typeof([123])

# ╔═╡ 2a904673-c6d8-4aa5-babe-a67693fca5f3


# ╔═╡ 78bd7b91-1e39-4965-96e1-ea07f7d4bcd3
md" # Inf 와 NaN"

# ╔═╡ 275a1b8a-c117-49df-a763-bf6204368e01
Inf # 무한대

# ╔═╡ cb64a3ad-2127-4b1c-843f-55a6ab124855
typeof(Inf)

# ╔═╡ 97d834f2-179b-45b9-a699-745dfb8abc21
Inf + Inf  

# ╔═╡ 5932b481-11e0-43ab-90aa-088c142bbdab
Inf- Inf

# ╔═╡ 561045ad-2441-4fa5-abd3-4b935fb36e61
typeof(NaN)

# ╔═╡ 902b81f7-499f-428c-918c-0a7d019f65fe
1/Inf #상수 / 무한대 = 0

# ╔═╡ 1fe8d1bb-51f0-4e6a-a011-e468576d3b28
1/NaN

# ╔═╡ c16768cb-b8b8-4dc8-981b-f107882d6b3b


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
# ╠═0427af5a-a14a-11ec-3cd4-a92623da9071
# ╠═423bcae3-9d56-4b75-91a8-9e6411eb2df3
# ╠═03d197c0-534a-4a84-ae44-570885cadee7
# ╠═f1205397-2f27-49c6-ae4f-f92c0122bd5a
# ╠═2accb946-ae01-4b53-926e-6df942bb938c
# ╠═5816bab8-0a50-4e3c-b985-78555470c0f4
# ╠═bec73ac1-3746-47de-953c-2a9a2664520d
# ╠═d42e8e3e-87c0-427b-814c-b5ae7fa2f052
# ╠═eb4820ca-4d1d-46ba-833c-bec6bc7fb82b
# ╠═c6dd1d4c-e391-4554-b86c-bb888f0747cd
# ╠═d0aab87d-0503-4b80-b41f-850f1376345a
# ╠═1bdef2de-7054-4b99-8e3e-eea8d7457970
# ╠═f2308293-a1f4-4f43-b8b2-45963c45c3f8
# ╠═51c83c70-0ba3-4932-ad91-0547d73dcfe7
# ╠═0a039a94-71da-407f-ba58-a10f1b2c2dac
# ╠═b4dae09e-328e-4a0d-bdb6-232f2cd6db39
# ╠═9164a3e6-0a77-437a-b6f4-05b7a5ffa19e
# ╠═12d2b2f2-ad54-4e9d-9b54-6300c4b42621
# ╠═27bc2e69-48ea-4360-9e1e-70be0d119538
# ╠═933a9ddb-7bdb-42d0-9627-026e836ec54c
# ╠═bbd673ee-f456-48da-8f84-11f27b783c93
# ╠═d6005975-5910-4424-b9f4-3fb74796414e
# ╠═44c831d5-c933-44c0-9678-5f74d8eb2da0
# ╠═efc18e7f-dcee-41e5-baa3-41639512fcb9
# ╠═a52684e4-00d6-4983-bbe1-e6dd60151cda
# ╠═2a904673-c6d8-4aa5-babe-a67693fca5f3
# ╠═78bd7b91-1e39-4965-96e1-ea07f7d4bcd3
# ╠═275a1b8a-c117-49df-a763-bf6204368e01
# ╠═cb64a3ad-2127-4b1c-843f-55a6ab124855
# ╠═97d834f2-179b-45b9-a699-745dfb8abc21
# ╠═5932b481-11e0-43ab-90aa-088c142bbdab
# ╠═561045ad-2441-4fa5-abd3-4b935fb36e61
# ╠═902b81f7-499f-428c-918c-0a7d019f65fe
# ╠═1fe8d1bb-51f0-4e6a-a011-e468576d3b28
# ╠═c16768cb-b8b8-4dc8-981b-f107882d6b3b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
