select * from crime_scene;
-- The Heart of Atlantis necklace disappeared. Many guests were questioned but only two of them gave valuable clues. One of them is a really famous actor. The other one is a woman who works as a consultant for a big company and her first name ends with "an".

select * from guest where occupation = "Actor";
-- 129	Clint Eastwood	Actor	VIP-G
select * from guest where occupation = "Consultant" and  name like "%an %";
-- 116	Vivian Nair	Consultant	VIP-R

select * from witness_statements join guest on witness_statements.guest_id = guest.id
  where occupation = "Actor" or (occupation = "Consultant" and name like "%an %");
-- 16	116	I saw someone holding an invitation ending with "-R". He was wearing a navy suit and a white tie.	116	Vivian Nair	Consultant	VIP-R
-- 50	129	I overheard someone say, "Meet me at the marina, dock 3.	129	Clint Eastwood	Actor	VIP-G

select * from attire_registry join marina_rentals
  on attire_registry.guest_id = marina_rentals.renter_guest_id
  join guest on attire_registry.guest_id - guest.id
  join final_interviews on guest.id = final_interviews.guest_id
  where attire_registry.note like "%navy suit, white tie%"
  and marina_rentals.dock_number = 3
  and marina_rentals.rental_date = "19870520"
  and guest.invitation_code like "%R";
-- 53	112	navy suit, white tie	9	3	112	19870520	Sea Serenade	105	Mike Manning	Wealth Reallocation Expert	VIP-R	105	105	I was the one who took the crystal. I guess I need a lawyer now?
