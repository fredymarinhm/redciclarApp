/*
 * Author: Fredy Marín
 * Proposito: Dar una carga inicial de registros
 */

 --Insert user
INSERT INTO public.users(
 	 email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, last_name, document, birthdate, address, telephone, password, password_confirmation)
	VALUES ('prueba@prueba.com', '$2a$11$6/K8/R.dIC8BzAJ81tBlQOPKlQdUAVIiAR49qkKfBZZA0.Yz1NRWe', null, null, null, '2018-07-28', '2018-07-28', 'Prue', 'ba', 'C.C. 1234', '2018-07-28', null, null, null, null);

--Insert points
INSERT INTO public.points(date, amount, created_at, updated_at, user_id)
	VALUES ('2018-07-28', 10, '2018-07-28', '2018-07-28', 1);

--Insert products
INSERT INTO public.products(name, description, price, amount, image, created_at, updated_at)
	VALUES ('puntos', 'producto puntos', 10, 10, null, '2018/07/28', '2018/07/28');

--Insert recycling station
INSERT INTO public.recycling_stations(name, address, telephone, latitude, longitude, description, created_at, updated_at)
	VALUES ('Estación 1', 'Calle 100', '1234', 123.45, 123.45, 'Estación uno', '2018/07/28', '2018/07/28');

--Insert store
INSERT INTO public.stores(name, telephone, email, address, created_at, updated_at)
	VALUES ('Tienda virutal', 'Tel 1234', 'tienda@virtual.com', 'Calle 100', '2018/07/28', '2018/07/28');

--Insert order
INSERT INTO public.orders(status, code, created_at, updated_at, user_id, recycling_station_id, store_id)
	VALUES ('Activa', 1234, '2018/07/28', '2018/07/28', 1, 1, 1);
	
--Insert item
INSERT INTO public.items(description, price, amount, created_at, updated_at, product_id, order_id, points)
	VALUES ('Descripción prueba', 1000, 1000, '2018/07/28', '2018/07/28', 1, 1, 10);