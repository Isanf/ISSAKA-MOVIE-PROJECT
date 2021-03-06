PGDMP             
            z            MovieJavaWeb    13.0    13.0 =               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    18153    MovieJavaWeb    DATABASE     r   CREATE DATABASE "MovieJavaWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "MovieJavaWeb";
                postgres    false            ?            1259    18254    address    TABLE     ?   CREATE TABLE public.address (
    id bigint NOT NULL,
    country character varying(255),
    area character varying(255),
    city character varying(255),
    street character varying(255),
    number character varying(255),
    contact_id bigint
);
    DROP TABLE public.address;
       public         heap    postgres    false            ?            1259    18239    contact    TABLE     ?   CREATE TABLE public.contact (
    id bigint NOT NULL,
    name character varying(255),
    birth_date timestamp without time zone,
    gender character varying(255),
    email character varying(255),
    movie_user_id bigint
);
    DROP TABLE public.contact;
       public         heap    postgres    false            ?            1259    18159    databasechangelog    TABLE     Y  CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);
 %   DROP TABLE public.databasechangelog;
       public         heap    postgres    false            ?            1259    18154    databasechangeloglock    TABLE     ?   CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);
 )   DROP TABLE public.databasechangeloglock;
       public         heap    postgres    false            ?            1259    18179    jhi_authority    TABLE     O   CREATE TABLE public.jhi_authority (
    name character varying(50) NOT NULL
);
 !   DROP TABLE public.jhi_authority;
       public         heap    postgres    false            ?            1259    18199    jhi_persistent_audit_event    TABLE     ?   CREATE TABLE public.jhi_persistent_audit_event (
    event_id bigint NOT NULL,
    principal character varying(50) NOT NULL,
    event_date timestamp without time zone,
    event_type character varying(255)
);
 .   DROP TABLE public.jhi_persistent_audit_event;
       public         heap    postgres    false            ?            1259    18204    jhi_persistent_audit_evt_data    TABLE     ?   CREATE TABLE public.jhi_persistent_audit_evt_data (
    event_id bigint NOT NULL,
    name character varying(150) NOT NULL,
    value character varying(255)
);
 1   DROP TABLE public.jhi_persistent_audit_evt_data;
       public         heap    postgres    false            ?            1259    18167    jhi_user    TABLE     ?  CREATE TABLE public.jhi_user (
    id bigint NOT NULL,
    login character varying(50) NOT NULL,
    password_hash character varying(60) NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(191),
    image_url character varying(256),
    activated boolean NOT NULL,
    lang_key character varying(10),
    activation_key character varying(20),
    reset_key character varying(20),
    created_by character varying(50) NOT NULL,
    created_date timestamp without time zone,
    reset_date timestamp without time zone,
    last_modified_by character varying(50),
    last_modified_date timestamp without time zone
);
    DROP TABLE public.jhi_user;
       public         heap    postgres    false            ?            1259    18184    jhi_user_authority    TABLE     {   CREATE TABLE public.jhi_user_authority (
    user_id bigint NOT NULL,
    authority_name character varying(50) NOT NULL
);
 &   DROP TABLE public.jhi_user_authority;
       public         heap    postgres    false            ?            1259    18216    movie    TABLE     ?   CREATE TABLE public.movie (
    id bigint NOT NULL,
    title character varying(255),
    date timestamp without time zone,
    external_id character varying(255)
);
    DROP TABLE public.movie;
       public         heap    postgres    false            ?            1259    18229 
   movie_user    TABLE     `   CREATE TABLE public.movie_user (
    id bigint NOT NULL,
    username character varying(255)
);
    DROP TABLE public.movie_user;
       public         heap    postgres    false            ?            1259    18234    movie_user_role    TABLE     h   CREATE TABLE public.movie_user_role (
    role_id bigint NOT NULL,
    movie_user_id bigint NOT NULL
);
 #   DROP TABLE public.movie_user_role;
       public         heap    postgres    false            ?            1259    18249    role    TABLE     V   CREATE TABLE public.role (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    18224 
   seen_movie    TABLE     ?   CREATE TABLE public.seen_movie (
    id bigint NOT NULL,
    date timestamp without time zone,
    movie_id bigint,
    movie_user_id bigint
);
    DROP TABLE public.seen_movie;
       public         heap    postgres    false            ?            1259    18165    sequence_generator    SEQUENCE        CREATE SEQUENCE public.sequence_generator
    START WITH 1050
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sequence_generator;
       public          postgres    false                      0    18254    address 
   TABLE DATA           V   COPY public.address (id, country, area, city, street, number, contact_id) FROM stdin;
    public          postgres    false    214   ?M                 0    18239    contact 
   TABLE DATA           U   COPY public.contact (id, name, birth_date, gender, email, movie_user_id) FROM stdin;
    public          postgres    false    212   %P       	          0    18159    databasechangelog 
   TABLE DATA           ?   COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
    public          postgres    false    201   \R                 0    18154    databasechangeloglock 
   TABLE DATA           R   COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
    public          postgres    false    200   ?W                 0    18179    jhi_authority 
   TABLE DATA           -   COPY public.jhi_authority (name) FROM stdin;
    public          postgres    false    204   ?W                 0    18199    jhi_persistent_audit_event 
   TABLE DATA           a   COPY public.jhi_persistent_audit_event (event_id, principal, event_date, event_type) FROM stdin;
    public          postgres    false    206   (X                 0    18204    jhi_persistent_audit_evt_data 
   TABLE DATA           N   COPY public.jhi_persistent_audit_evt_data (event_id, name, value) FROM stdin;
    public          postgres    false    207   ?X                 0    18167    jhi_user 
   TABLE DATA           ?   COPY public.jhi_user (id, login, password_hash, first_name, last_name, email, image_url, activated, lang_key, activation_key, reset_key, created_by, created_date, reset_date, last_modified_by, last_modified_date) FROM stdin;
    public          postgres    false    203   ?X                 0    18184    jhi_user_authority 
   TABLE DATA           E   COPY public.jhi_user_authority (user_id, authority_name) FROM stdin;
    public          postgres    false    205   ?Z                 0    18216    movie 
   TABLE DATA           =   COPY public.movie (id, title, date, external_id) FROM stdin;
    public          postgres    false    208   <[                 0    18229 
   movie_user 
   TABLE DATA           2   COPY public.movie_user (id, username) FROM stdin;
    public          postgres    false    210   r\                 0    18234    movie_user_role 
   TABLE DATA           A   COPY public.movie_user_role (role_id, movie_user_id) FROM stdin;
    public          postgres    false    211   E]                 0    18249    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    213   f]                 0    18224 
   seen_movie 
   TABLE DATA           G   COPY public.seen_movie (id, date, movie_id, movie_user_id) FROM stdin;
    public          postgres    false    209   8^                  0    0    sequence_generator    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sequence_generator', 4750, true);
          public          postgres    false    202            |           2606    18261    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    214            v           2606    18246    contact contact_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public            postgres    false    212            \           2606    18158 0   databasechangeloglock databasechangeloglock_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.databasechangeloglock DROP CONSTRAINT databasechangeloglock_pkey;
       public            postgres    false    200            d           2606    18183     jhi_authority jhi_authority_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.jhi_authority
    ADD CONSTRAINT jhi_authority_pkey PRIMARY KEY (name);
 J   ALTER TABLE ONLY public.jhi_authority DROP CONSTRAINT jhi_authority_pkey;
       public            postgres    false    204            i           2606    18203 :   jhi_persistent_audit_event jhi_persistent_audit_event_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.jhi_persistent_audit_event
    ADD CONSTRAINT jhi_persistent_audit_event_pkey PRIMARY KEY (event_id);
 d   ALTER TABLE ONLY public.jhi_persistent_audit_event DROP CONSTRAINT jhi_persistent_audit_event_pkey;
       public            postgres    false    206            l           2606    18208 @   jhi_persistent_audit_evt_data jhi_persistent_audit_evt_data_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.jhi_persistent_audit_evt_data
    ADD CONSTRAINT jhi_persistent_audit_evt_data_pkey PRIMARY KEY (event_id, name);
 j   ALTER TABLE ONLY public.jhi_persistent_audit_evt_data DROP CONSTRAINT jhi_persistent_audit_evt_data_pkey;
       public            postgres    false    207    207            f           2606    18188 *   jhi_user_authority jhi_user_authority_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT jhi_user_authority_pkey PRIMARY KEY (user_id, authority_name);
 T   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT jhi_user_authority_pkey;
       public            postgres    false    205    205            ^           2606    18174    jhi_user jhi_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT jhi_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT jhi_user_pkey;
       public            postgres    false    203            n           2606    18223    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    208            r           2606    18233    movie_user movie_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.movie_user
    ADD CONSTRAINT movie_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.movie_user DROP CONSTRAINT movie_user_pkey;
       public            postgres    false    210            t           2606    18238 $   movie_user_role movie_user_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.movie_user_role
    ADD CONSTRAINT movie_user_role_pkey PRIMARY KEY (movie_user_id, role_id);
 N   ALTER TABLE ONLY public.movie_user_role DROP CONSTRAINT movie_user_role_pkey;
       public            postgres    false    211    211            z           2606    18253    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    213            p           2606    18228    seen_movie seen_movie_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.seen_movie
    ADD CONSTRAINT seen_movie_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.seen_movie DROP CONSTRAINT seen_movie_pkey;
       public            postgres    false    209            x           2606    18248     contact ux_contact_movie_user_id 
   CONSTRAINT     d   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT ux_contact_movie_user_id UNIQUE (movie_user_id);
 J   ALTER TABLE ONLY public.contact DROP CONSTRAINT ux_contact_movie_user_id;
       public            postgres    false    212            `           2606    18176    jhi_user ux_user_email 
   CONSTRAINT     R   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT ux_user_email UNIQUE (email);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT ux_user_email;
       public            postgres    false    203            b           2606    18178    jhi_user ux_user_login 
   CONSTRAINT     R   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT ux_user_login UNIQUE (login);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT ux_user_login;
       public            postgres    false    203            g           1259    18209    idx_persistent_audit_event    INDEX     r   CREATE INDEX idx_persistent_audit_event ON public.jhi_persistent_audit_event USING btree (principal, event_date);
 .   DROP INDEX public.idx_persistent_audit_event;
       public            postgres    false    206    206            j           1259    18210    idx_persistent_audit_evt_data    INDEX     k   CREATE INDEX idx_persistent_audit_evt_data ON public.jhi_persistent_audit_evt_data USING btree (event_id);
 1   DROP INDEX public.idx_persistent_audit_evt_data;
       public            postgres    false    207            ?           2606    18287    address fk_address_contact_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address
    ADD CONSTRAINT fk_address_contact_id FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 G   ALTER TABLE ONLY public.address DROP CONSTRAINT fk_address_contact_id;
       public          postgres    false    214    212    2934            }           2606    18189 $   jhi_user_authority fk_authority_name    FK CONSTRAINT     ?   ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT fk_authority_name FOREIGN KEY (authority_name) REFERENCES public.jhi_authority(name);
 N   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT fk_authority_name;
       public          postgres    false    204    205    2916            ?           2606    18282     contact fk_contact_movie_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT fk_contact_movie_user_id FOREIGN KEY (movie_user_id) REFERENCES public.movie_user(id);
 J   ALTER TABLE ONLY public.contact DROP CONSTRAINT fk_contact_movie_user_id;
       public          postgres    false    2930    212    210                       2606    18211 8   jhi_persistent_audit_evt_data fk_evt_pers_audit_evt_data    FK CONSTRAINT     ?   ALTER TABLE ONLY public.jhi_persistent_audit_evt_data
    ADD CONSTRAINT fk_evt_pers_audit_evt_data FOREIGN KEY (event_id) REFERENCES public.jhi_persistent_audit_event(event_id);
 b   ALTER TABLE ONLY public.jhi_persistent_audit_evt_data DROP CONSTRAINT fk_evt_pers_audit_evt_data;
       public          postgres    false    207    2921    206            ?           2606    18272 0   movie_user_role fk_movie_user_role_movie_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_user_role
    ADD CONSTRAINT fk_movie_user_role_movie_user_id FOREIGN KEY (movie_user_id) REFERENCES public.movie_user(id);
 Z   ALTER TABLE ONLY public.movie_user_role DROP CONSTRAINT fk_movie_user_role_movie_user_id;
       public          postgres    false    210    2930    211            ?           2606    18277 *   movie_user_role fk_movie_user_role_role_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_user_role
    ADD CONSTRAINT fk_movie_user_role_role_id FOREIGN KEY (role_id) REFERENCES public.role(id);
 T   ALTER TABLE ONLY public.movie_user_role DROP CONSTRAINT fk_movie_user_role_role_id;
       public          postgres    false    2938    211    213            ?           2606    18262 !   seen_movie fk_seen_movie_movie_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seen_movie
    ADD CONSTRAINT fk_seen_movie_movie_id FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 K   ALTER TABLE ONLY public.seen_movie DROP CONSTRAINT fk_seen_movie_movie_id;
       public          postgres    false    208    209    2926            ?           2606    18267 &   seen_movie fk_seen_movie_movie_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.seen_movie
    ADD CONSTRAINT fk_seen_movie_movie_user_id FOREIGN KEY (movie_user_id) REFERENCES public.movie_user(id);
 P   ALTER TABLE ONLY public.seen_movie DROP CONSTRAINT fk_seen_movie_movie_user_id;
       public          postgres    false    210    209    2930            ~           2606    18194    jhi_user_authority fk_user_id    FK CONSTRAINT        ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.jhi_user(id);
 G   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT fk_user_id;
       public          postgres    false    203    2910    205                 x?U?Mr?0???)p?v??wi;M?$v<V?E'??%?)R????J?EW??ć?p?V???N?g??WȬ??Đ??9?Ԋ2,Dka?R/u???AB?7?c??p?\,!cbW?8ސ???}?????Ipl_
5???Z9P??7? ??WE_^[/$?}?ȵ?#^E=$?b?-^?!f???a=??+q?%K?v*u?/?qC!??n?y?????JS?/.?6	:?m?ő?x?ai?0ā?P?˖Dqi?$㒴>ۅMԌ+???A???????1x,?PBͧ?????㗺????	?o???Z?n:C???,?ZLS??qB|??A??k???=?;VSN???6?I)?	?4p??8??V?I0?Q??qV??0????+>????-?)?~|???5?;
?7??8??
?4??<??l?ﰲ?d?Q?y????56JVm??W?????"ob??9?4?̝8$O?M??{-	??? ?G?m?t?????X?????<٥? o^?|????P_?|??bH??'J??c?i	6???s???c???G?k??????6 n         '  x?]SMO1<??
?C??JH|??
QBI+.H???ص???W?߷?,?^??g?͌s?!??E?Yoc
?8@??4/?SY??Jg?????d?G??7????'?G??'l?g?;x??p?k?j-?^?3??\???3x?ޥibG}R?????????Xzڒ5-?TU?M???')?!/?}??WZg+??Q?P;L???>pݛ?<???????d}????+?N۠W??'9????????tu??6???\??M?֢_???>??ÚB׋/^]?s?7????N????+????;???4W??V?"??L
쭉j??	.??;??ţ??a7?`??j???;??<R?r???7?%g#.Vc?3???,?>???s??T?kFAdK]V?\????P?Ԯ?r?$]rj?hXKLQF??ׁg??*???vC???GT+]e?vܧV]?F?'P*?????d?*??????=?fk???+?
???G???\??`K?(/?????׻?j?cg?z?w?4??H?????H?S??5J???06?q6?L? ??)C      	   5  x??X?n7}??B`+????E????)?@?riO?%????{?Vc???2?? iH?g??Cr?y???o?k??Rݿ?V?WUK|??????7?|Rͫ?
??2=?,???M??n@?k$??v?`? ?8̀}??û?w?3w]6??\?????l???tA??,????W8O8Z??|3???/?{?c?E?ؗ?L??ض???????Ug?p1?n??S?2???H?Vq?ٗ?J\&?Bņ??[??q???}BH????X?????aQW???F??l?9?^W?P????????????S?w????C5oF-Ywz^?ҏ?OM?ח??9?r=?Ǉ4k?Bp?9?9M?n?	M??M;?o?*?Qn5?~L?crS8?	??V(iȘE{?)iAXYz??????z??=???6??
???j6j????v?=d(!?'(;d??8ME_??0??KV?]?????
???{??8%,2?}kςC??K#??[?t??Y?$/??Fk?d?B?l??=???V%|?)???|?w?N]h????i??`f?E?)???
?zpȳ?)??xz????&L???4韩??A$?f/??5?n?FH#sG+??dV?_>K??Za9-M%?>G?a??a???V?~??Y??obT?I?!Ke,G?	??2??Z?Cu?i?:QLx???5R:??M?EK???ڙ?-F?,%H??G?N???????g?3??CxQ??????J޴ƶ"???O>P~????{k???8]q???H٩	??EHS???E?
??N[?Bq?i?0f??X??G??<?????y?l??u?= ^?? Ix?b?[???P?2?w'X?X???????M?q ?mV*Z??>K?*v??r???6???R??sZ+M??N?
?YI1????u
T?@?B??n??(I?uv<???0???Qv??HE|??vK?FEs?e?3??̝?P F!?>+nIućj??6??s?q???i?m?NH?1)g}??hCQ	,??T%E+?=V?c?(?z? ?m3!?3?l???x??ѭ?'5(?????]???&f,EG?ϓ????_??/??cA^?1o?~`??o?Ť??>G????s?ȫ??br,촳??p??L??????ף???Z??>ԸȘO?????????ɤ?ɧ???;?D'??xkSe5?x?`m&?N?x?~[?|?[M?c?TM???mg???????J?$?M%??VGI??3щ?Z?Hƶ?EQ@?4??h??I???B???>?ַ.?8?!$???M???D??2Lt??Pڠl?7X*?وu?4T?;u"??r??x???2?<a??e|uu?????         H   x?3?,?4202?54?54Q00?24?2??30??tq????u?sV?047?32?3?4?3??????? ?0            x???q?wt????
1C?]??b???? b??         b   x?u˱
? ?Y??H???0?B?ZlP? ???z??=??????8??1 ?'????"??Z?S?K???潴S)V=ᛥ#X??A??7g?}r??            x?????? ? ?         3  x???Ks?0???Wt?mcB@?U,R??????ׯ??s??Mg2?dr??w?I0?.?!H?3C?1zNG?H}?o&??ڎ'+??l?]?ɶ?:?b?
8VZj7??r#?&?O?]^ 8? ?z3?????0?fyvI󺪫???D???y???`?f?~??,???wԉi?+???金D/??YLf`pG?a=?S"???0??l???-??$)?mԍcM4?`8?K;?~???zxZ?0??>)p7_?4??:?????v-?oN,??:?(:?(*G?^̌?р1?ݡ??????k??7?(ᓓ????ڭ&?԰??&?0+?m??ɼ???ky??Z??w?N"ɲ?ڙ?e?x^!W?3B?E?-??hL?1??f7^~
??mJ??y{qk??T/?{???8??}??6?????0??/?y?????rB??|{?}?pO??3L? G?q?m?ʂ??????QVl\??9?7?`?=?"Y?$?N焑NKͽ??}^???k???%?׺'-U{Agc???bܦѾ???OH??/}{?%"?5?F?A????'?t:? y[((         2   x?3???q?wt????2?pB?]????%??$L??F??zLP?1z\\\ ?(?         &  x???Mn? ???\ 6??٥???f[??x?8`v?ۗ.???i6???y??????bݙ???Kt?!?5L??(?A??S?#4???Y?pn??am?o%????0??C}?U%~?-??>?i?`??;`??$?{_?Ƹaf ?J??8?h?/?S!?I????W?E??>?d?jCZ?VJ??J???F{v?u????hU?rONz?3ğ!???շ?r_???C????@d??rBg}?9?>{?Ƣ?qFb??r??OK??E?y?n;3j??Fi?U?W^몪? '??         ?   x?-??N?0E??W?дdx,A,??!?qO&jkKN???ӑ???s??3?H-Y?q??????{Ͻ?2?B?$?E3x????g<B?}?M??[??ЧY?g??x?ڶH?BW?????\??غK?8?W?=}5Vz?Ѻ6|?1?ź?VZO??VK}a??R?Lƞp???z?pE?ø??(?p??W?}???	MJ            x?3?4?????? ]         ?   x?E??N1?k?S????L???8???????ѮO?]Ռ4?ff?F??}??^??.]7????@?W?B6?v?Z?jS??=???$OW?Qt?4????-b/mL3z???h5??B?9Ye??g5M?n?ѭ{+??KD?;?0"Rx??R9?^?߾?????"e)??Յ?? ????S??L??~??/#rR8         ?  x?m?۱?*E??????[? n?w?cc????j!???|???????<??Ͽ?p?:ۨV??f/?????/D??e??}??<?.[?l|?<??????/[{ݗ?ơ???^F?Z????????????=X??G	?F9a?b?`-Z	????Z??L??قA??R???|ƄNL?W"??[???R??,?/H?dx?&??|?΂)j???ɎIɤԑ?p?1$D-?>qQ????0d??.>6??Nh%%I?d???݉D?2r?l?X??9?_??`Y?4?:a?c?h?????1kա?>??/?.DŭlM?N?ڎI-?*??ҹ;n
??pꌭ?
?????c?ƫ???P9????Zp?T???VD??j=?*???XD??~ɫ??7?e`X<?*??X?M???????A?z???S?d?P????Hwȹ ^??fle0ĸ0?|@?B(GB9z?A???'?????Z??Y0?2txZ??n?e???h??l?????x?ɻ'jE??ߐ??xaX????S?]??E?T???)??b&L?P?Ѵ	??Ƙ?c???fA??N?Y?ׁ),?Ã??a-AE;??L??H4??|???J??i"*?~C?@}?0Y??ºb???<Ro??^?T?Q?jۅɎ?????????/?gk????_?V?ל0?1??
%???O???8?H??0t	X?1??|?``b?t??PߘDQ???	?S/?\??	?W?????W?     