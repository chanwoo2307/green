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

# ╔═╡ 1bdef2de-7054-4b99-8e3e-eea8d7457970
☼ = 3.0 #\sun + tap

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

md"   ### 자료형을 보려면? "

# ╔═╡ 44c831d5-c933-44c0-9678-5f74d8eb2da0
typeof(123)

# ╔═╡ efc18e7f-dcee-41e5-baa3-41639512fcb9
typeof(123.123)

# ╔═╡ a52684e4-00d6-4983-bbe1-e6dd60151cda
typeof([123])

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
md"""
### 문자열
"""

# ╔═╡ 06e12df0-f871-4b64-af54-8ac5a28354bb
str1 = "apple"

# ╔═╡ 5986ef94-dfe1-41e8-bd50-28724dc6194c
str1 

# ╔═╡ 327aea28-64b7-4f56-9203-f56117bd7ffc
str1[1] #파이썬과 다르게 1번쪠 문자가 1라고 잘 표시 됨.

# ╔═╡ 46c5401a-5e94-4dff-9447-8f8fd79a8e0a
length(str1) #str1의 길이

# ╔═╡ c6307db0-5b7e-4b25-bbdf-8fee7d90e95e
str1[2], str1[1:2]

# ╔═╡ bb71aaea-d562-44b2-867f-0fc0846b50a8
md" #### 튜플 언팩킹이 자동으로 됨. "  

# ╔═╡ 91c7b5a5-0b79-4ada-ab48-885d0ff672c2
str2= "pie"

# ╔═╡ 0d931a18-8d7f-4337-a4e1-4ab355a10623
md" ## 문자를 합치는 방법."

# ╔═╡ c919df46-909c-41dd-b2d0-45ffe0415fd9
str1+ str2 #에러가 난다#

# ╔═╡ 66549bb4-e139-43a8-9a80-2c114083380c
string(str1,str2) #1번째 방법#

# ╔═╡ 58bc9bc8-45f6-4651-8395-53120e15a684
string(str1, "cake") # 2번째 방법

# ╔═╡ 59e8784e-d82c-465a-9cbe-ec570eb59f93
"10+20=$(10+20)" # 문자열 끼워넣기

# ╔═╡ cc5cca1f-f811-4e9f-b3a4-7017d9acdedc
begin
	word1= "chanwoo"
	word2= "studying"
	word3= "Julia"
end

# ╔═╡ afa02578-8245-4d8c-8cf7-b5006b44920a
"$word1 is $word2 $word3" #이렇게 쓸 수 도 있다.

# ╔═╡ 2129ce29-63ed-454b-b027-91c0721f4d9b
md" #### 튜플"

# ╔═╡ cd1a27e6-3a62-4ef0-9d3c-e809f7469e65
(1,2,3)

# ╔═╡ 983713b5-8e69-456c-9ba3-81eab3ebf3ca
a= 1,2,3 #괄호는 생략가능하다.

# ╔═╡ b9228d03-ce07-4291-af84-8a0a5f9de752
a[1]

# ╔═╡ 927ab9dc-b4e5-4d42-b9ac-2818d6faecf6
a[1:2] 

# ╔═╡ 12218860-fe82-46e0-9959-eebf59ce256c
a[1]=10 # 튜플은 a의 원소의 값을 변경할 수 없다.

# ╔═╡ a44a15e2-035b-4e5a-8b13-247369185076
a1,a2,a3= 1,2,3
#(a1,a3,a3)=(1,2,3)
#a1=1,a2=2,a3=3)

# ╔═╡ 8b25f311-a5c5-486d-83fd-ac91130631f7
md" ### Array" 

# ╔═╡ 73ffaa05-4bcb-4e74-9d28-b8550c12c7e1
b=[123,456,789]

# ╔═╡ 9593651a-6ef6-48b0-973f-1a03b4eb1969


# ╔═╡ 4f0bb494-65c0-4478-b025-2b6f9dfedebf
b[1]

# ╔═╡ d64de24b-2e51-4eca-b6d2-bc52b5256b6c
b[1:2]

# ╔═╡ cda2779d-cb61-4506-a3bb-9c07878d9ab1
b[1]=100 #array는 값을 변경할 수 있다.

# ╔═╡ f3e885d3-8dc6-4162-ab59-7551fffd7785
md" ### 브로드 캐스팅"

# ╔═╡ f7cf6562-5a19-4f52-b217-b3ff926e134a
b+1 #b의 각 원소에 1을 더하고 싶지만 에러가 난다.  

# ╔═╡ 0adee737-9ed5-4775-9169-9332981ea296
broadcast(+,b,1) #방법1

# ╔═╡ 2c94b35b-565e-4c2f-855d-2eba10711bf0
b.+1 #방법2

# ╔═╡ b28f76ff-b5c5-4491-b7a8-460e1de523a9


# ╔═╡ 8d800aa5-ed06-4e3f-a091-940be267d68d
b1 = [1,2,3] # 3 x 1 의 행렬이라 생각하면 된다,

# ╔═╡ cd951867-49a7-4c09-b305-afe3227730f2
typeof(b1)

# ╔═╡ c5ed5758-7f38-4b18-8b2a-4a298d56930d
b2= [1 2 3] # 1 x 3 행렬이라 생각하면 된다.

# ╔═╡ ffebff79-cd16-453c-9378-64c77519b8ab
typeof(b2)

# ╔═╡ c7eac59f-6921-4aaf-b418-4e0a97cb5de4
md" #b1과 b2의 타입은 다르다." 

# ╔═╡ 9299a3cd-1134-4917-b5b8-8f814a57e455
md" #b1과 b2를 브로드캐스팅 해보자 " 

# ╔═╡ e9718246-1fbb-4542-aecd-b895f6c4f130
#b1=[1,1,1,
#    2,2,2, #이렇게 생각하면 된다. 3 x 1 행렬이 3x 3 으로 확장
#	 3,3,3]

# ╔═╡ 44860e08-529c-4893-ad3d-1430884259a6
#b2= [1, 2, 3, 
#  	  1, 2, 3, #이렇게 생각하면 된다. 1 x 3 행렬이 3x 3 으로 확장
#	  1, 2, 3]

# ╔═╡ 3adcdebe-0b98-490a-9b1c-859e0708dd17
b1.+b2

# ╔═╡ c4b41fc9-6579-455f-87b8-9f601e389f30
b1.*b2

# ╔═╡ 6b57f51a-e796-441b-807d-241cb9d7e6e6
md" ### 브로드 캐스팅의 응용"

# ╔═╡ d6e06dea-ef8a-481e-a76c-dd0ba5c57205
[1,2]==[1,2]

# ╔═╡ ace8d7f2-e9ee-4502-bf44-488482302aaf
[1,2]==[1,3]

# ╔═╡ b76682a1-0c80-4582-9e2b-5fbfe7782504
[2,2]==[1,2]

# ╔═╡ b990ea59-86ee-47c3-9da0-edbf0ce73f00
[1,2] .==[1,2] #각 원소가 같는 지 확인할 수 있다.

# ╔═╡ f38550d2-77d5-42fd-8f9a-15a1a1b029bb
[1,2].==[1,3]

# ╔═╡ 89539414-67c1-4ccd-9438-3e3e41b42ada
[2,2].==[1,2]

# ╔═╡ 82046e59-da76-43a5-a82b-5c696007442d


# ╔═╡ 2cf67fbf-a984-4313-9ffb-81bd7481f34a
md" ### 난수로 벡터를 선헌하는 방법"

# ╔═╡ 15bbb300-f2c3-4caa-9aae-ce1bbf7bde35
randn(4) #정규분포

# ╔═╡ 08365a07-d633-44c1-8586-08a0e7ce7f23
 rand(4) #유니폼 분포 

# ╔═╡ 2102e38a-9e6d-4b71-a003-346b31091a08
rand([1,2,3,4],3) #rand의 두번쨰 기능 : sample= 무작위로 3번의 복원추출

# ╔═╡ 6ab29751-989a-4ca8-bc8f-bacc1fe3be74

md" ### 리스트 컴프리헨션"

# ╔═╡ 3c97feeb-cf05-48a0-b765-cc779a026f57
√1, √2,√3, √4

# ╔═╡ 756bd1e6-dce4-4bca-a4c2-89421ba069f4
[√i for i in [1,2,3,4]] #다른 표햔

# ╔═╡ 13fe15d6-6ee2-4503-8254-e08fcdb9f7a9
md"""
$\{\sqrt{1},\sqrt{2},\sqrt{3},\sqrt{4} \}= \{\sqrt{i}: i=1,2,3,4 \}$"""

# ╔═╡ 0f5fbd3c-4fdc-4d46-981a-ba52fec072e0


# ╔═╡ 71bdb5fb-f977-4ecc-b43f-bebce77d3b52


# ╔═╡ fcc4ecf8-e4e8-4dd7-88e4-6c28a8f31933


# ╔═╡ 543e5600-d94c-4ef2-8f27-38ab3b011061


# ╔═╡ 37ec1f97-c1c0-4f62-842c-07f986edb34e


# ╔═╡ b2e7435d-d408-441c-a30e-5cef3314cade


# ╔═╡ f8da476f-1e73-42d1-960a-9f5f3b71c237


# ╔═╡ b2a5908f-7532-44fd-add2-28c55b38414d


# ╔═╡ 28baeb0d-fc34-4e12-bb64-65bc7175249e


# ╔═╡ 2668701d-d940-4aab-8c0d-c727f2d28c20


# ╔═╡ d8d2579b-fcec-4177-977b-aee79731b826


# ╔═╡ a0755748-8636-4a05-b633-5b6203c71342
 

# ╔═╡ 07f9ddc6-fe18-4fb8-9040-3bb2525ceb91


# ╔═╡ cefc23a5-27aa-4ae3-a961-8c8977690015


# ╔═╡ 55bc2c22-6cda-4cdb-b2d3-bddcc3e397d4


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
# ╠═1bdef2de-7054-4b99-8e3e-eea8d7457970
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
# ╠═78bd7b91-1e39-4965-96e1-ea07f7d4bcd3
# ╠═275a1b8a-c117-49df-a763-bf6204368e01
# ╠═cb64a3ad-2127-4b1c-843f-55a6ab124855
# ╠═97d834f2-179b-45b9-a699-745dfb8abc21
# ╠═5932b481-11e0-43ab-90aa-088c142bbdab
# ╠═561045ad-2441-4fa5-abd3-4b935fb36e61
# ╠═902b81f7-499f-428c-918c-0a7d019f65fe
# ╠═1fe8d1bb-51f0-4e6a-a011-e468576d3b28
# ╠═c16768cb-b8b8-4dc8-981b-f107882d6b3b
# ╠═06e12df0-f871-4b64-af54-8ac5a28354bb
# ╠═5986ef94-dfe1-41e8-bd50-28724dc6194c
# ╠═327aea28-64b7-4f56-9203-f56117bd7ffc
# ╠═46c5401a-5e94-4dff-9447-8f8fd79a8e0a
# ╠═c6307db0-5b7e-4b25-bbdf-8fee7d90e95e
# ╠═bb71aaea-d562-44b2-867f-0fc0846b50a8
# ╠═91c7b5a5-0b79-4ada-ab48-885d0ff672c2
# ╠═0d931a18-8d7f-4337-a4e1-4ab355a10623
# ╠═c919df46-909c-41dd-b2d0-45ffe0415fd9
# ╠═66549bb4-e139-43a8-9a80-2c114083380c
# ╠═58bc9bc8-45f6-4651-8395-53120e15a684
# ╠═59e8784e-d82c-465a-9cbe-ec570eb59f93
# ╠═cc5cca1f-f811-4e9f-b3a4-7017d9acdedc
# ╠═afa02578-8245-4d8c-8cf7-b5006b44920a
# ╠═2129ce29-63ed-454b-b027-91c0721f4d9b
# ╠═cd1a27e6-3a62-4ef0-9d3c-e809f7469e65
# ╠═983713b5-8e69-456c-9ba3-81eab3ebf3ca
# ╠═b9228d03-ce07-4291-af84-8a0a5f9de752
# ╠═927ab9dc-b4e5-4d42-b9ac-2818d6faecf6
# ╠═12218860-fe82-46e0-9959-eebf59ce256c
# ╠═a44a15e2-035b-4e5a-8b13-247369185076
# ╠═8b25f311-a5c5-486d-83fd-ac91130631f7
# ╠═73ffaa05-4bcb-4e74-9d28-b8550c12c7e1
# ╠═9593651a-6ef6-48b0-973f-1a03b4eb1969
# ╠═4f0bb494-65c0-4478-b025-2b6f9dfedebf
# ╠═d64de24b-2e51-4eca-b6d2-bc52b5256b6c
# ╠═cda2779d-cb61-4506-a3bb-9c07878d9ab1
# ╠═f3e885d3-8dc6-4162-ab59-7551fffd7785
# ╠═f7cf6562-5a19-4f52-b217-b3ff926e134a
# ╠═0adee737-9ed5-4775-9169-9332981ea296
# ╠═2c94b35b-565e-4c2f-855d-2eba10711bf0
# ╠═b28f76ff-b5c5-4491-b7a8-460e1de523a9
# ╠═8d800aa5-ed06-4e3f-a091-940be267d68d
# ╠═cd951867-49a7-4c09-b305-afe3227730f2
# ╠═c5ed5758-7f38-4b18-8b2a-4a298d56930d
# ╠═ffebff79-cd16-453c-9378-64c77519b8ab
# ╠═c7eac59f-6921-4aaf-b418-4e0a97cb5de4
# ╠═9299a3cd-1134-4917-b5b8-8f814a57e455
# ╠═e9718246-1fbb-4542-aecd-b895f6c4f130
# ╠═44860e08-529c-4893-ad3d-1430884259a6
# ╠═3adcdebe-0b98-490a-9b1c-859e0708dd17
# ╠═c4b41fc9-6579-455f-87b8-9f601e389f30
# ╠═6b57f51a-e796-441b-807d-241cb9d7e6e6
# ╠═d6e06dea-ef8a-481e-a76c-dd0ba5c57205
# ╠═ace8d7f2-e9ee-4502-bf44-488482302aaf
# ╠═b76682a1-0c80-4582-9e2b-5fbfe7782504
# ╠═b990ea59-86ee-47c3-9da0-edbf0ce73f00
# ╠═f38550d2-77d5-42fd-8f9a-15a1a1b029bb
# ╠═89539414-67c1-4ccd-9438-3e3e41b42ada
# ╠═82046e59-da76-43a5-a82b-5c696007442d
# ╠═2cf67fbf-a984-4313-9ffb-81bd7481f34a
# ╠═15bbb300-f2c3-4caa-9aae-ce1bbf7bde35
# ╠═08365a07-d633-44c1-8586-08a0e7ce7f23
# ╠═2102e38a-9e6d-4b71-a003-346b31091a08
# ╠═6ab29751-989a-4ca8-bc8f-bacc1fe3be74
# ╠═3c97feeb-cf05-48a0-b765-cc779a026f57
# ╠═756bd1e6-dce4-4bca-a4c2-89421ba069f4
# ╠═13fe15d6-6ee2-4503-8254-e08fcdb9f7a9
# ╠═0f5fbd3c-4fdc-4d46-981a-ba52fec072e0
# ╠═71bdb5fb-f977-4ecc-b43f-bebce77d3b52
# ╠═fcc4ecf8-e4e8-4dd7-88e4-6c28a8f31933
# ╠═543e5600-d94c-4ef2-8f27-38ab3b011061
# ╠═37ec1f97-c1c0-4f62-842c-07f986edb34e
# ╠═b2e7435d-d408-441c-a30e-5cef3314cade
# ╠═f8da476f-1e73-42d1-960a-9f5f3b71c237
# ╠═b2a5908f-7532-44fd-add2-28c55b38414d
# ╠═28baeb0d-fc34-4e12-bb64-65bc7175249e
# ╠═2668701d-d940-4aab-8c0d-c727f2d28c20
# ╠═d8d2579b-fcec-4177-977b-aee79731b826
# ╠═a0755748-8636-4a05-b633-5b6203c71342
# ╠═07f9ddc6-fe18-4fb8-9040-3bb2525ceb91
# ╠═cefc23a5-27aa-4ae3-a961-8c8977690015
# ╠═55bc2c22-6cda-4cdb-b2d3-bddcc3e397d4
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
