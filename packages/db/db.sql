PGDMP     ,    -                {            my-db    15.2    15.2 �   /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    18767    my-db    DATABASE     �   CREATE DATABASE "my-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "my-db";
                postgres    false            �           1247    18769    PAYMENT_COLLECTION_STATUS_ENUM    TYPE     �   CREATE TYPE public."PAYMENT_COLLECTION_STATUS_ENUM" AS ENUM (
    'not_paid',
    'awaiting',
    'authorized',
    'partially_authorized',
    'canceled'
);
 3   DROP TYPE public."PAYMENT_COLLECTION_STATUS_ENUM";
       public          postgres    false            �           1247    18780    PAYMENT_COLLECTION_TYPE_ENUM    TYPE     P   CREATE TYPE public."PAYMENT_COLLECTION_TYPE_ENUM" AS ENUM (
    'order_edit'
);
 1   DROP TYPE public."PAYMENT_COLLECTION_TYPE_ENUM";
       public          postgres    false            �           1247    18784    cart_type_enum    TYPE     }   CREATE TYPE public.cart_type_enum AS ENUM (
    'default',
    'swap',
    'draft_order',
    'payment_link',
    'claim'
);
 !   DROP TYPE public.cart_type_enum;
       public          postgres    false            �           1247    18796    claim_item_reason_enum    TYPE     �   CREATE TYPE public.claim_item_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);
 )   DROP TYPE public.claim_item_reason_enum;
       public          postgres    false            �           1247    18806 #   claim_order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.claim_order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 6   DROP TYPE public.claim_order_fulfillment_status_enum;
       public          postgres    false            �           1247    18826    claim_order_payment_status_enum    TYPE     m   CREATE TYPE public.claim_order_payment_status_enum AS ENUM (
    'na',
    'not_refunded',
    'refunded'
);
 2   DROP TYPE public.claim_order_payment_status_enum;
       public          postgres    false            �           1247    18834    claim_order_type_enum    TYPE     R   CREATE TYPE public.claim_order_type_enum AS ENUM (
    'refund',
    'replace'
);
 (   DROP TYPE public.claim_order_type_enum;
       public          postgres    false            �           1247    18840     discount_condition_operator_enum    TYPE     X   CREATE TYPE public.discount_condition_operator_enum AS ENUM (
    'in',
    'not_in'
);
 3   DROP TYPE public.discount_condition_operator_enum;
       public          postgres    false            �           1247    18846    discount_condition_type_enum    TYPE     �   CREATE TYPE public.discount_condition_type_enum AS ENUM (
    'products',
    'product_types',
    'product_collections',
    'product_tags',
    'customer_groups'
);
 /   DROP TYPE public.discount_condition_type_enum;
       public          postgres    false            �           1247    18858    discount_rule_allocation_enum    TYPE     V   CREATE TYPE public.discount_rule_allocation_enum AS ENUM (
    'total',
    'item'
);
 0   DROP TYPE public.discount_rule_allocation_enum;
       public          postgres    false            �           1247    18864    discount_rule_type_enum    TYPE     k   CREATE TYPE public.discount_rule_type_enum AS ENUM (
    'fixed',
    'percentage',
    'free_shipping'
);
 *   DROP TYPE public.discount_rule_type_enum;
       public          postgres    false            �           1247    18872    draft_order_status_enum    TYPE     T   CREATE TYPE public.draft_order_status_enum AS ENUM (
    'open',
    'completed'
);
 *   DROP TYPE public.draft_order_status_enum;
       public          postgres    false            �           1247    18878    invite_role_enum    TYPE     \   CREATE TYPE public.invite_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 #   DROP TYPE public.invite_role_enum;
       public          postgres    false            �           1247    18886    order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 0   DROP TYPE public.order_fulfillment_status_enum;
       public          postgres    false            �           1247    18906    order_item_change_type_enum    TYPE     q   CREATE TYPE public.order_item_change_type_enum AS ENUM (
    'item_add',
    'item_remove',
    'item_update'
);
 .   DROP TYPE public.order_item_change_type_enum;
       public          postgres    false            �           1247    18914    order_payment_status_enum    TYPE     �   CREATE TYPE public.order_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'partially_refunded',
    'refunded',
    'canceled',
    'requires_action'
);
 ,   DROP TYPE public.order_payment_status_enum;
       public          postgres    false            �           1247    18930    order_status_enum    TYPE     �   CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'archived',
    'canceled',
    'requires_action'
);
 $   DROP TYPE public.order_status_enum;
       public          postgres    false            �           1247    18942    payment_session_status_enum    TYPE     �   CREATE TYPE public.payment_session_status_enum AS ENUM (
    'authorized',
    'pending',
    'requires_more',
    'error',
    'canceled'
);
 .   DROP TYPE public.payment_session_status_enum;
       public          postgres    false            �           1247    18954    price_list_status_enum    TYPE     Q   CREATE TYPE public.price_list_status_enum AS ENUM (
    'active',
    'draft'
);
 )   DROP TYPE public.price_list_status_enum;
       public          postgres    false            �           1247    18960    price_list_type_enum    TYPE     P   CREATE TYPE public.price_list_type_enum AS ENUM (
    'sale',
    'override'
);
 '   DROP TYPE public.price_list_type_enum;
       public          postgres    false            �           1247    18966    product_status_enum    TYPE     q   CREATE TYPE public.product_status_enum AS ENUM (
    'draft',
    'proposed',
    'published',
    'rejected'
);
 &   DROP TYPE public.product_status_enum;
       public          postgres    false            �           1247    18976    refund_reason_enum    TYPE     v   CREATE TYPE public.refund_reason_enum AS ENUM (
    'discount',
    'return',
    'swap',
    'claim',
    'other'
);
 %   DROP TYPE public.refund_reason_enum;
       public          postgres    false            �           1247    18988    return_status_enum    TYPE     z   CREATE TYPE public.return_status_enum AS ENUM (
    'requested',
    'received',
    'requires_action',
    'canceled'
);
 %   DROP TYPE public.return_status_enum;
       public          postgres    false            �           1247    18998    shipping_option_price_type_enum    TYPE     b   CREATE TYPE public.shipping_option_price_type_enum AS ENUM (
    'flat_rate',
    'calculated'
);
 2   DROP TYPE public.shipping_option_price_type_enum;
       public          postgres    false            �           1247    19004 %   shipping_option_requirement_type_enum    TYPE     m   CREATE TYPE public.shipping_option_requirement_type_enum AS ENUM (
    'min_subtotal',
    'max_subtotal'
);
 8   DROP TYPE public.shipping_option_requirement_type_enum;
       public          postgres    false            �           1247    19010    shipping_profile_type_enum    TYPE     h   CREATE TYPE public.shipping_profile_type_enum AS ENUM (
    'default',
    'gift_card',
    'custom'
);
 -   DROP TYPE public.shipping_profile_type_enum;
       public          postgres    false            �           1247    19018    swap_fulfillment_status_enum    TYPE     �   CREATE TYPE public.swap_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'fulfilled',
    'shipped',
    'partially_shipped',
    'canceled',
    'requires_action'
);
 /   DROP TYPE public.swap_fulfillment_status_enum;
       public          postgres    false            �           1247    19032    swap_payment_status_enum    TYPE     �   CREATE TYPE public.swap_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'confirmed',
    'canceled',
    'difference_refunded',
    'partially_refunded',
    'refunded',
    'requires_action'
);
 +   DROP TYPE public.swap_payment_status_enum;
       public          postgres    false            �           1247    19052    user_role_enum    TYPE     Z   CREATE TYPE public.user_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 !   DROP TYPE public.user_role_enum;
       public          postgres    false            �            1259    19059    address    TABLE     g  CREATE TABLE public.address (
    id character varying NOT NULL,
    customer_id character varying,
    company character varying,
    first_name character varying,
    last_name character varying,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    country_code character varying,
    province character varying,
    postal_code character varying,
    phone character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    19066    analytics_config    TABLE     w  CREATE TABLE public.analytics_config (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    user_id character varying NOT NULL,
    opt_out boolean DEFAULT false NOT NULL,
    anonymize boolean DEFAULT false NOT NULL
);
 $   DROP TABLE public.analytics_config;
       public         heap    postgres    false            �            1259    19075 	   batch_job    TABLE     |  CREATE TABLE public.batch_job (
    id character varying NOT NULL,
    type text NOT NULL,
    created_by character varying,
    context jsonb,
    result jsonb,
    dry_run boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    pre_processed_at timestamp with time zone,
    confirmed_at timestamp with time zone,
    processing_at timestamp with time zone,
    completed_at timestamp with time zone,
    failed_at timestamp with time zone,
    canceled_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.batch_job;
       public         heap    postgres    false            �            1259    19083    cart    TABLE     �  CREATE TABLE public.cart (
    id character varying NOT NULL,
    email character varying,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    customer_id character varying,
    payment_id character varying,
    type public.cart_type_enum DEFAULT 'default'::public.cart_type_enum NOT NULL,
    completed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    context jsonb,
    payment_authorized_at timestamp with time zone,
    sales_channel_id character varying
);
    DROP TABLE public.cart;
       public         heap    postgres    false    944    944            �            1259    19091    cart_discounts    TABLE     {   CREATE TABLE public.cart_discounts (
    cart_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 "   DROP TABLE public.cart_discounts;
       public         heap    postgres    false            �            1259    19096    cart_gift_cards    TABLE     }   CREATE TABLE public.cart_gift_cards (
    cart_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 #   DROP TABLE public.cart_gift_cards;
       public         heap    postgres    false            �            1259    19101    claim_image    TABLE     V  CREATE TABLE public.claim_image (
    id character varying NOT NULL,
    claim_item_id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_image;
       public         heap    postgres    false            �            1259    19108 
   claim_item    TABLE     �  CREATE TABLE public.claim_item (
    id character varying NOT NULL,
    claim_order_id character varying NOT NULL,
    item_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    reason public.claim_item_reason_enum NOT NULL,
    note character varying,
    quantity integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_item;
       public         heap    postgres    false    947            �            1259    19115    claim_item_tags    TABLE     w   CREATE TABLE public.claim_item_tags (
    item_id character varying NOT NULL,
    tag_id character varying NOT NULL
);
 #   DROP TABLE public.claim_item_tags;
       public         heap    postgres    false            �            1259    19120    claim_order    TABLE       CREATE TABLE public.claim_order (
    id character varying NOT NULL,
    payment_status public.claim_order_payment_status_enum DEFAULT 'na'::public.claim_order_payment_status_enum NOT NULL,
    fulfillment_status public.claim_order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.claim_order_fulfillment_status_enum NOT NULL,
    type public.claim_order_type_enum NOT NULL,
    order_id character varying NOT NULL,
    shipping_address_id character varying,
    refund_amount integer,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean
);
    DROP TABLE public.claim_order;
       public         heap    postgres    false    953    950    956    953    950            �            1259    19129 	   claim_tag    TABLE     (  CREATE TABLE public.claim_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_tag;
       public         heap    postgres    false            �            1259    19136    country    TABLE       CREATE TABLE public.country (
    id integer NOT NULL,
    iso_2 character varying NOT NULL,
    iso_3 character varying NOT NULL,
    num_code integer NOT NULL,
    name character varying NOT NULL,
    display_name character varying NOT NULL,
    region_id character varying
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    19141    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    225            3           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    226            �            1259    19142    currency    TABLE     �   CREATE TABLE public.currency (
    code character varying NOT NULL,
    symbol character varying NOT NULL,
    symbol_native character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.currency;
       public         heap    postgres    false            �            1259    19147    custom_shipping_option    TABLE     }  CREATE TABLE public.custom_shipping_option (
    id character varying NOT NULL,
    price integer NOT NULL,
    shipping_option_id character varying NOT NULL,
    cart_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 *   DROP TABLE public.custom_shipping_option;
       public         heap    postgres    false            �            1259    19154    customer    TABLE       CREATE TABLE public.customer (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    billing_address_id character varying,
    password_hash character varying,
    phone character varying,
    has_account boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    19162    customer_group    TABLE     ,  CREATE TABLE public.customer_group (
    id character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 "   DROP TABLE public.customer_group;
       public         heap    postgres    false            �            1259    19169    customer_group_customers    TABLE     �   CREATE TABLE public.customer_group_customers (
    customer_group_id character varying NOT NULL,
    customer_id character varying NOT NULL
);
 ,   DROP TABLE public.customer_group_customers;
       public         heap    postgres    false            �            1259    19174    discount    TABLE     �  CREATE TABLE public.discount (
    id character varying NOT NULL,
    code character varying NOT NULL,
    is_dynamic boolean NOT NULL,
    rule_id character varying,
    is_disabled boolean NOT NULL,
    parent_discount_id character varying,
    starts_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    usage_limit integer,
    usage_count integer DEFAULT 0 NOT NULL,
    valid_duration character varying
);
    DROP TABLE public.discount;
       public         heap    postgres    false            �            1259    19183    discount_condition    TABLE     �  CREATE TABLE public.discount_condition (
    id character varying NOT NULL,
    type public.discount_condition_type_enum NOT NULL,
    operator public.discount_condition_operator_enum NOT NULL,
    discount_rule_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.discount_condition;
       public         heap    postgres    false    962    959            �            1259    19190 !   discount_condition_customer_group    TABLE     -  CREATE TABLE public.discount_condition_customer_group (
    customer_group_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 5   DROP TABLE public.discount_condition_customer_group;
       public         heap    postgres    false            �            1259    19197    discount_condition_product    TABLE       CREATE TABLE public.discount_condition_product (
    product_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 .   DROP TABLE public.discount_condition_product;
       public         heap    postgres    false            �            1259    19204 %   discount_condition_product_collection    TABLE     5  CREATE TABLE public.discount_condition_product_collection (
    product_collection_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 9   DROP TABLE public.discount_condition_product_collection;
       public         heap    postgres    false            �            1259    19211    discount_condition_product_tag    TABLE     '  CREATE TABLE public.discount_condition_product_tag (
    product_tag_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 2   DROP TABLE public.discount_condition_product_tag;
       public         heap    postgres    false            �            1259    19218    discount_condition_product_type    TABLE     )  CREATE TABLE public.discount_condition_product_type (
    product_type_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 3   DROP TABLE public.discount_condition_product_type;
       public         heap    postgres    false            �            1259    19225    discount_regions    TABLE        CREATE TABLE public.discount_regions (
    discount_id character varying NOT NULL,
    region_id character varying NOT NULL
);
 $   DROP TABLE public.discount_regions;
       public         heap    postgres    false            �            1259    19230    discount_rule    TABLE     �  CREATE TABLE public.discount_rule (
    id character varying NOT NULL,
    description character varying,
    type public.discount_rule_type_enum NOT NULL,
    value integer NOT NULL,
    allocation public.discount_rule_allocation_enum,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 !   DROP TABLE public.discount_rule;
       public         heap    postgres    false    968    965            �            1259    19237    discount_rule_products    TABLE     �   CREATE TABLE public.discount_rule_products (
    discount_rule_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 *   DROP TABLE public.discount_rule_products;
       public         heap    postgres    false            �            1259    19242    draft_order    TABLE     =  CREATE TABLE public.draft_order (
    id character varying NOT NULL,
    status public.draft_order_status_enum DEFAULT 'open'::public.draft_order_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    order_id character varying,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification_order boolean
);
    DROP TABLE public.draft_order;
       public         heap    postgres    false    971    971            �            1259    19250    draft_order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.draft_order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.draft_order_display_id_seq;
       public          postgres    false    242            4           0    0    draft_order_display_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.draft_order_display_id_seq OWNED BY public.draft_order.display_id;
          public          postgres    false    243            �            1259    19251    fulfillment    TABLE     o  CREATE TABLE public.fulfillment (
    id character varying NOT NULL,
    swap_id character varying,
    order_id character varying,
    tracking_numbers jsonb DEFAULT '[]'::jsonb NOT NULL,
    data jsonb NOT NULL,
    shipped_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    provider_id character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.fulfillment;
       public         heap    postgres    false            �            1259    19259    fulfillment_item    TABLE     �   CREATE TABLE public.fulfillment_item (
    fulfillment_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL
);
 $   DROP TABLE public.fulfillment_item;
       public         heap    postgres    false            �            1259    19264    fulfillment_provider    TABLE     �   CREATE TABLE public.fulfillment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 (   DROP TABLE public.fulfillment_provider;
       public         heap    postgres    false            �            1259    19270 	   gift_card    TABLE       CREATE TABLE public.gift_card (
    id character varying NOT NULL,
    code character varying NOT NULL,
    value integer NOT NULL,
    balance integer NOT NULL,
    region_id character varying NOT NULL,
    order_id character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    tax_rate real
);
    DROP TABLE public.gift_card;
       public         heap    postgres    false            �            1259    19278    gift_card_transaction    TABLE     /  CREATE TABLE public.gift_card_transaction (
    id character varying NOT NULL,
    gift_card_id character varying NOT NULL,
    order_id character varying NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    is_taxable boolean,
    tax_rate real
);
 )   DROP TABLE public.gift_card_transaction;
       public         heap    postgres    false            �            1259    19284    idempotency_key    TABLE     �  CREATE TABLE public.idempotency_key (
    id character varying NOT NULL,
    idempotency_key character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    locked_at timestamp with time zone,
    request_method character varying,
    request_params jsonb,
    request_path character varying,
    response_code integer,
    response_body jsonb,
    recovery_point character varying DEFAULT 'started'::character varying NOT NULL
);
 #   DROP TABLE public.idempotency_key;
       public         heap    postgres    false            �            1259    19291    image    TABLE     "  CREATE TABLE public.image (
    id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    19298    invite    TABLE     	  CREATE TABLE public.invite (
    id character varying NOT NULL,
    user_email character varying NOT NULL,
    role public.invite_role_enum DEFAULT 'member'::public.invite_role_enum,
    accepted boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    token character varying NOT NULL,
    expires_at timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.invite;
       public         heap    postgres    false    974    974            �            1259    19308 	   line_item    TABLE       CREATE TABLE public.line_item (
    id character varying NOT NULL,
    cart_id character varying,
    order_id character varying,
    swap_id character varying,
    title character varying NOT NULL,
    description character varying,
    thumbnail character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    should_merge boolean DEFAULT true NOT NULL,
    allow_discounts boolean DEFAULT true NOT NULL,
    has_shipping boolean,
    unit_price integer NOT NULL,
    variant_id character varying,
    quantity integer NOT NULL,
    fulfilled_quantity integer,
    returned_quantity integer,
    shipped_quantity integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    claim_order_id character varying,
    is_return boolean DEFAULT false NOT NULL,
    original_item_id character varying,
    order_edit_id character varying,
    CONSTRAINT "CHK_0cd85e15610d11b553d5e8fda6" CHECK ((shipped_quantity <= fulfilled_quantity)),
    CONSTRAINT "CHK_64eef00a5064887634f1680866" CHECK ((quantity > 0)),
    CONSTRAINT "CHK_91f40396d847f6ecfd9f752bf8" CHECK ((returned_quantity <= quantity)),
    CONSTRAINT "CHK_c61716c68f5ad5de2834c827d3" CHECK ((fulfilled_quantity <= quantity))
);
    DROP TABLE public.line_item;
       public         heap    postgres    false            �            1259    19323    line_item_adjustment    TABLE     �   CREATE TABLE public.line_item_adjustment (
    id character varying NOT NULL,
    item_id character varying NOT NULL,
    description character varying NOT NULL,
    discount_id character varying,
    amount numeric NOT NULL,
    metadata jsonb
);
 (   DROP TABLE public.line_item_adjustment;
       public         heap    postgres    false            �            1259    19328    line_item_tax_line    TABLE     c  CREATE TABLE public.line_item_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    item_id character varying NOT NULL
);
 &   DROP TABLE public.line_item_tax_line;
       public         heap    postgres    false            �            1259    19335 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false                        1259    19340    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    255            5           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    256                       1259    19341    money_amount    TABLE     �  CREATE TABLE public.money_amount (
    id character varying NOT NULL,
    currency_code character varying NOT NULL,
    amount integer NOT NULL,
    variant_id character varying,
    region_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    min_quantity integer,
    max_quantity integer,
    price_list_id character varying
);
     DROP TABLE public.money_amount;
       public         heap    postgres    false                       1259    19348    note    TABLE     �  CREATE TABLE public.note (
    id character varying NOT NULL,
    value character varying NOT NULL,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    author_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.note;
       public         heap    postgres    false                       1259    19355    notification    TABLE     �  CREATE TABLE public.notification (
    id character varying NOT NULL,
    event_name character varying,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    customer_id character varying,
    "to" character varying NOT NULL,
    data jsonb NOT NULL,
    parent_id character varying,
    provider_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false                       1259    19362    notification_provider    TABLE     �   CREATE TABLE public.notification_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 )   DROP TABLE public.notification_provider;
       public         heap    postgres    false                       1259    19368    oauth    TABLE     �   CREATE TABLE public.oauth (
    id character varying NOT NULL,
    display_name character varying NOT NULL,
    application_name character varying NOT NULL,
    install_url character varying,
    uninstall_url character varying,
    data jsonb
);
    DROP TABLE public.oauth;
       public         heap    postgres    false                       1259    19373    order    TABLE     Y  CREATE TABLE public."order" (
    id character varying NOT NULL,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    fulfillment_status public.order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.order_fulfillment_status_enum NOT NULL,
    payment_status public.order_payment_status_enum DEFAULT 'not_paid'::public.order_payment_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    customer_id character varying NOT NULL,
    email character varying NOT NULL,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    draft_order_id character varying,
    no_notification boolean,
    external_id character varying,
    sales_channel_id character varying
);
    DROP TABLE public."order";
       public         heap    postgres    false    986    977    983    986    977    983                       1259    19383    order_discounts    TABLE     }   CREATE TABLE public.order_discounts (
    order_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 #   DROP TABLE public.order_discounts;
       public         heap    postgres    false                       1259    19388    order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_display_id_seq;
       public          postgres    false    262            6           0    0    order_display_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;
          public          postgres    false    264            	           1259    19389 
   order_edit    TABLE     �  CREATE TABLE public.order_edit (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    order_id character varying NOT NULL,
    internal_note character varying,
    created_by character varying NOT NULL,
    requested_by character varying,
    requested_at timestamp with time zone,
    confirmed_by character varying,
    confirmed_at timestamp with time zone,
    declined_by character varying,
    declined_reason character varying,
    declined_at timestamp with time zone,
    canceled_by character varying,
    canceled_at timestamp with time zone,
    payment_collection_id character varying
);
    DROP TABLE public.order_edit;
       public         heap    postgres    false            
           1259    19396    order_gift_cards    TABLE        CREATE TABLE public.order_gift_cards (
    order_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 $   DROP TABLE public.order_gift_cards;
       public         heap    postgres    false                       1259    19401    order_item_change    TABLE     �  CREATE TABLE public.order_item_change (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public.order_item_change_type_enum NOT NULL,
    order_edit_id character varying NOT NULL,
    original_line_item_id character varying,
    line_item_id character varying
);
 %   DROP TABLE public.order_item_change;
       public         heap    postgres    false    980                       1259    19408    payment    TABLE     p  CREATE TABLE public.payment (
    id character varying NOT NULL,
    swap_id character varying,
    cart_id character varying,
    order_id character varying,
    amount integer NOT NULL,
    currency_code character varying NOT NULL,
    amount_refunded integer DEFAULT 0 NOT NULL,
    provider_id character varying NOT NULL,
    data jsonb NOT NULL,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying
);
    DROP TABLE public.payment;
       public         heap    postgres    false                       1259    19416    payment_collection    TABLE     V  CREATE TABLE public.payment_collection (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public."PAYMENT_COLLECTION_TYPE_ENUM" NOT NULL,
    status public."PAYMENT_COLLECTION_STATUS_ENUM" NOT NULL,
    description text,
    amount integer NOT NULL,
    authorized_amount integer,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    metadata jsonb,
    created_by character varying NOT NULL
);
 &   DROP TABLE public.payment_collection;
       public         heap    postgres    false    941    938                       1259    19423    payment_collection_payments    TABLE     �   CREATE TABLE public.payment_collection_payments (
    payment_collection_id character varying NOT NULL,
    payment_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_payments;
       public         heap    postgres    false                       1259    19428    payment_collection_sessions    TABLE     �   CREATE TABLE public.payment_collection_sessions (
    payment_collection_id character varying NOT NULL,
    payment_session_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_sessions;
       public         heap    postgres    false                       1259    19433    payment_provider    TABLE     |   CREATE TABLE public.payment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 $   DROP TABLE public.payment_provider;
       public         heap    postgres    false                       1259    19439    payment_session    TABLE        CREATE TABLE public.payment_session (
    id character varying NOT NULL,
    cart_id character varying,
    provider_id character varying NOT NULL,
    is_selected boolean,
    status public.payment_session_status_enum NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    idempotency_key character varying,
    payment_authorized_at timestamp with time zone,
    amount integer,
    is_initiated boolean DEFAULT false NOT NULL
);
 #   DROP TABLE public.payment_session;
       public         heap    postgres    false    989                       1259    19447 
   price_list    TABLE     K  CREATE TABLE public.price_list (
    id character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    type public.price_list_type_enum DEFAULT 'sale'::public.price_list_type_enum NOT NULL,
    status public.price_list_status_enum DEFAULT 'draft'::public.price_list_status_enum NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.price_list;
       public         heap    postgres    false    995    992    995    992                       1259    19456    price_list_customer_groups    TABLE     �   CREATE TABLE public.price_list_customer_groups (
    price_list_id character varying NOT NULL,
    customer_group_id character varying NOT NULL
);
 .   DROP TABLE public.price_list_customer_groups;
       public         heap    postgres    false                       1259    19461    product    TABLE     �  CREATE TABLE public.product (
    id character varying NOT NULL,
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    handle character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    thumbnail character varying,
    profile_id character varying NOT NULL,
    weight integer,
    length integer,
    height integer,
    width integer,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    collection_id character varying,
    type_id character varying,
    discountable boolean DEFAULT true NOT NULL,
    status public.product_status_enum DEFAULT 'draft'::public.product_status_enum NOT NULL,
    external_id character varying
);
    DROP TABLE public.product;
       public         heap    postgres    false    998    998                       1259    19471    product_category    TABLE     �  CREATE TABLE public.product_category (
    id character varying NOT NULL,
    name text NOT NULL,
    handle text NOT NULL,
    parent_category_id character varying,
    mpath text,
    is_active boolean DEFAULT false,
    is_internal boolean DEFAULT false,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    CONSTRAINT product_category_rank_check CHECK ((rank >= 0))
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false                       1259    19482    product_category_product    TABLE     �   CREATE TABLE public.product_category_product (
    product_category_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 ,   DROP TABLE public.product_category_product;
       public         heap    postgres    false                       1259    19487    product_collection    TABLE     O  CREATE TABLE public.product_collection (
    id character varying NOT NULL,
    title character varying NOT NULL,
    handle character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.product_collection;
       public         heap    postgres    false                       1259    19494    product_images    TABLE     {   CREATE TABLE public.product_images (
    product_id character varying NOT NULL,
    image_id character varying NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false                       1259    19499    product_option    TABLE     O  CREATE TABLE public.product_option (
    id character varying NOT NULL,
    title character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    product_id character varying
);
 "   DROP TABLE public.product_option;
       public         heap    postgres    false                       1259    19506    product_option_value    TABLE     �  CREATE TABLE public.product_option_value (
    id character varying NOT NULL,
    value character varying NOT NULL,
    option_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 (   DROP TABLE public.product_option_value;
       public         heap    postgres    false                       1259    19513    product_sales_channel    TABLE     �   CREATE TABLE public.product_sales_channel (
    product_id character varying NOT NULL,
    sales_channel_id character varying NOT NULL
);
 )   DROP TABLE public.product_sales_channel;
       public         heap    postgres    false                       1259    19518    product_tag    TABLE     *  CREATE TABLE public.product_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.product_tag;
       public         heap    postgres    false                       1259    19525    product_tags    TABLE        CREATE TABLE public.product_tags (
    product_id character varying NOT NULL,
    product_tag_id character varying NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false                       1259    19530    product_tax_rate    TABLE       CREATE TABLE public.product_tax_rate (
    product_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 $   DROP TABLE public.product_tax_rate;
       public         heap    postgres    false                       1259    19537    product_type    TABLE     +  CREATE TABLE public.product_type (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
     DROP TABLE public.product_type;
       public         heap    postgres    false                        1259    19544    product_type_tax_rate    TABLE       CREATE TABLE public.product_type_tax_rate (
    product_type_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 )   DROP TABLE public.product_type_tax_rate;
       public         heap    postgres    false            !           1259    19551    product_variant    TABLE     R  CREATE TABLE public.product_variant (
    id character varying NOT NULL,
    title character varying NOT NULL,
    product_id character varying NOT NULL,
    sku character varying,
    barcode character varying,
    ean character varying,
    upc character varying,
    inventory_quantity integer NOT NULL,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    variant_rank integer DEFAULT 0
);
 #   DROP TABLE public.product_variant;
       public         heap    postgres    false            "           1259    19561    product_variant_inventory_item    TABLE     x  CREATE TABLE public.product_variant_inventory_item (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    inventory_item_id text NOT NULL,
    variant_id text NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    deleted_at timestamp with time zone
);
 2   DROP TABLE public.product_variant_inventory_item;
       public         heap    postgres    false            #           1259    19569    publishable_api_key    TABLE     b  CREATE TABLE public.publishable_api_key (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by character varying,
    revoked_by character varying,
    revoked_at timestamp with time zone,
    title character varying NOT NULL
);
 '   DROP TABLE public.publishable_api_key;
       public         heap    postgres    false            $           1259    19576 !   publishable_api_key_sales_channel    TABLE     �   CREATE TABLE public.publishable_api_key_sales_channel (
    sales_channel_id character varying NOT NULL,
    publishable_key_id character varying NOT NULL
);
 5   DROP TABLE public.publishable_api_key_sales_channel;
       public         heap    postgres    false            %           1259    19581    refund    TABLE     �  CREATE TABLE public.refund (
    id character varying NOT NULL,
    order_id character varying,
    amount integer NOT NULL,
    note character varying,
    reason public.refund_reason_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    payment_id character varying
);
    DROP TABLE public.refund;
       public         heap    postgres    false    1001            &           1259    19588    region    TABLE       CREATE TABLE public.region (
    id character varying NOT NULL,
    name character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real NOT NULL,
    tax_code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    gift_cards_taxable boolean DEFAULT true NOT NULL,
    automatic_taxes boolean DEFAULT true NOT NULL,
    tax_provider_id character varying
);
    DROP TABLE public.region;
       public         heap    postgres    false            '           1259    19597    region_fulfillment_providers    TABLE     �   CREATE TABLE public.region_fulfillment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 0   DROP TABLE public.region_fulfillment_providers;
       public         heap    postgres    false            (           1259    19602    region_payment_providers    TABLE     �   CREATE TABLE public.region_payment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 ,   DROP TABLE public.region_payment_providers;
       public         heap    postgres    false            )           1259    19607    return    TABLE     g  CREATE TABLE public.return (
    id character varying NOT NULL,
    status public.return_status_enum DEFAULT 'requested'::public.return_status_enum NOT NULL,
    swap_id character varying,
    order_id character varying,
    shipping_data jsonb,
    refund_amount integer NOT NULL,
    received_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.return;
       public         heap    postgres    false    1004    1004            *           1259    19615    return_item    TABLE     U  CREATE TABLE public.return_item (
    return_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL,
    is_requested boolean DEFAULT true NOT NULL,
    requested_quantity integer,
    received_quantity integer,
    metadata jsonb,
    reason_id character varying,
    note character varying
);
    DROP TABLE public.return_item;
       public         heap    postgres    false            +           1259    19621    return_reason    TABLE     �  CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    parent_return_reason_id character varying
);
 !   DROP TABLE public.return_reason;
       public         heap    postgres    false            ,           1259    19628    sales_channel    TABLE     j  CREATE TABLE public.sales_channel (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name character varying NOT NULL,
    description character varying,
    is_disabled boolean DEFAULT false NOT NULL
);
 !   DROP TABLE public.sales_channel;
       public         heap    postgres    false            -           1259    19636    sales_channel_location    TABLE     >  CREATE TABLE public.sales_channel_location (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    sales_channel_id text NOT NULL,
    location_id text NOT NULL,
    deleted_at timestamp with time zone
);
 *   DROP TABLE public.sales_channel_location;
       public         heap    postgres    false            .           1259    19643    shipping_method    TABLE     ]  CREATE TABLE public.shipping_method (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    order_id character varying,
    cart_id character varying,
    swap_id character varying,
    return_id character varying,
    price integer NOT NULL,
    data jsonb NOT NULL,
    claim_order_id character varying,
    CONSTRAINT "CHK_64c6812fe7815be30d688df513" CHECK ((price >= 0)),
    CONSTRAINT "CHK_a7020b08665bbd64d84a6641cf" CHECK (((claim_order_id IS NOT NULL) OR (order_id IS NOT NULL) OR (cart_id IS NOT NULL) OR (swap_id IS NOT NULL) OR (return_id IS NOT NULL)))
);
 #   DROP TABLE public.shipping_method;
       public         heap    postgres    false            /           1259    19650    shipping_method_tax_line    TABLE     t  CREATE TABLE public.shipping_method_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    shipping_method_id character varying NOT NULL
);
 ,   DROP TABLE public.shipping_method_tax_line;
       public         heap    postgres    false            0           1259    19657    shipping_option    TABLE     �  CREATE TABLE public.shipping_option (
    id character varying NOT NULL,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    profile_id character varying NOT NULL,
    provider_id character varying NOT NULL,
    price_type public.shipping_option_price_type_enum NOT NULL,
    amount integer,
    is_return boolean DEFAULT false NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    admin_only boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_7a367f5901ae0a5b0df75aee38" CHECK ((amount >= 0))
);
 #   DROP TABLE public.shipping_option;
       public         heap    postgres    false    1007            1           1259    19667    shipping_option_requirement    TABLE       CREATE TABLE public.shipping_option_requirement (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    type public.shipping_option_requirement_type_enum NOT NULL,
    amount integer NOT NULL,
    deleted_at timestamp with time zone
);
 /   DROP TABLE public.shipping_option_requirement;
       public         heap    postgres    false    1010            2           1259    19672    shipping_profile    TABLE     c  CREATE TABLE public.shipping_profile (
    id character varying NOT NULL,
    name character varying NOT NULL,
    type public.shipping_profile_type_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 $   DROP TABLE public.shipping_profile;
       public         heap    postgres    false    1013            3           1259    19679    shipping_tax_rate    TABLE       CREATE TABLE public.shipping_tax_rate (
    shipping_option_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 %   DROP TABLE public.shipping_tax_rate;
       public         heap    postgres    false            4           1259    19686 
   staged_job    TABLE     �   CREATE TABLE public.staged_job (
    id character varying NOT NULL,
    event_name character varying NOT NULL,
    data jsonb NOT NULL,
    options jsonb DEFAULT '{}'::jsonb NOT NULL
);
    DROP TABLE public.staged_job;
       public         heap    postgres    false            5           1259    19692    store    TABLE     Y  CREATE TABLE public.store (
    id character varying NOT NULL,
    name character varying DEFAULT 'Medusa Store'::character varying NOT NULL,
    default_currency_code character varying DEFAULT 'usd'::character varying NOT NULL,
    swap_link_template character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    payment_link_template character varying,
    invite_link_template character varying,
    default_sales_channel_id character varying,
    default_location_id character varying
);
    DROP TABLE public.store;
       public         heap    postgres    false            6           1259    19701    store_currencies    TABLE     �   CREATE TABLE public.store_currencies (
    store_id character varying NOT NULL,
    currency_code character varying NOT NULL
);
 $   DROP TABLE public.store_currencies;
       public         heap    postgres    false            7           1259    19706    swap    TABLE     �  CREATE TABLE public.swap (
    id character varying NOT NULL,
    fulfillment_status public.swap_fulfillment_status_enum NOT NULL,
    payment_status public.swap_payment_status_enum NOT NULL,
    order_id character varying NOT NULL,
    difference_due integer,
    shipping_address_id character varying,
    cart_id character varying,
    confirmed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean,
    canceled_at timestamp with time zone,
    allow_backorder boolean DEFAULT false NOT NULL
);
    DROP TABLE public.swap;
       public         heap    postgres    false    1016    1019            8           1259    19714    tax_provider    TABLE     x   CREATE TABLE public.tax_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
     DROP TABLE public.tax_provider;
       public         heap    postgres    false            9           1259    19720    tax_rate    TABLE     R  CREATE TABLE public.tax_rate (
    id character varying NOT NULL,
    rate real,
    code character varying,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
    DROP TABLE public.tax_rate;
       public         heap    postgres    false            :           1259    19727    tracking_link    TABLE     �  CREATE TABLE public.tracking_link (
    id character varying NOT NULL,
    url character varying,
    tracking_number character varying NOT NULL,
    fulfillment_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying
);
 !   DROP TABLE public.tracking_link;
       public         heap    postgres    false            ;           1259    19734    user    TABLE     �  CREATE TABLE public."user" (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    password_hash character varying,
    api_token character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    role public.user_role_enum DEFAULT 'member'::public.user_role_enum
);
    DROP TABLE public."user";
       public         heap    postgres    false    1022    1022            Y           2604    19742 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            t           2604    19743    draft_order display_id    DEFAULT     �   ALTER TABLE ONLY public.draft_order ALTER COLUMN display_id SET DEFAULT nextval('public.draft_order_display_id_seq'::regclass);
 E   ALTER TABLE public.draft_order ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    19744    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    19745    order display_id    DEFAULT     v   ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);
 A   ALTER TABLE public."order" ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    264    262            �          0    19059    address 
   TABLE DATA           �   COPY public.address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    214         �          0    19066    analytics_config 
   TABLE DATA           o   COPY public.analytics_config (id, created_at, updated_at, deleted_at, user_id, opt_out, anonymize) FROM stdin;
    public          postgres    false    215   *      �          0    19075 	   batch_job 
   TABLE DATA           �   COPY public.batch_job (id, type, created_by, context, result, dry_run, created_at, pre_processed_at, confirmed_at, processing_at, completed_at, failed_at, canceled_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    216   �      �          0    19083    cart 
   TABLE DATA           �   COPY public.cart (id, email, billing_address_id, shipping_address_id, region_id, customer_id, payment_id, type, completed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, context, payment_authorized_at, sales_channel_id) FROM stdin;
    public          postgres    false    217   �      �          0    19091    cart_discounts 
   TABLE DATA           >   COPY public.cart_discounts (cart_id, discount_id) FROM stdin;
    public          postgres    false    218   �      �          0    19096    cart_gift_cards 
   TABLE DATA           @   COPY public.cart_gift_cards (cart_id, gift_card_id) FROM stdin;
    public          postgres    false    219   �      �          0    19101    claim_image 
   TABLE DATA           k   COPY public.claim_image (id, claim_item_id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    220         �          0    19108 
   claim_item 
   TABLE DATA           �   COPY public.claim_item (id, claim_order_id, item_id, variant_id, reason, note, quantity, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    221   9      �          0    19115    claim_item_tags 
   TABLE DATA           :   COPY public.claim_item_tags (item_id, tag_id) FROM stdin;
    public          postgres    false    222   V      �          0    19120    claim_order 
   TABLE DATA           �   COPY public.claim_order (id, payment_status, fulfillment_status, type, order_id, shipping_address_id, refund_amount, canceled_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification) FROM stdin;
    public          postgres    false    223   s      �          0    19129 	   claim_tag 
   TABLE DATA           \   COPY public.claim_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    224   �      �          0    19136    country 
   TABLE DATA           \   COPY public.country (id, iso_2, iso_3, num_code, name, display_name, region_id) FROM stdin;
    public          postgres    false    225   �      �          0    19142    currency 
   TABLE DATA           E   COPY public.currency (code, symbol, symbol_native, name) FROM stdin;
    public          postgres    false    227   d.      �          0    19147    custom_shipping_option 
   TABLE DATA           �   COPY public.custom_shipping_option (id, price, shipping_option_id, cart_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    228   M6      �          0    19154    customer 
   TABLE DATA           �   COPY public.customer (id, email, first_name, last_name, billing_address_id, password_hash, phone, has_account, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    229   j6      �          0    19162    customer_group 
   TABLE DATA           `   COPY public.customer_group (id, name, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    230   �6      �          0    19169    customer_group_customers 
   TABLE DATA           R   COPY public.customer_group_customers (customer_group_id, customer_id) FROM stdin;
    public          postgres    false    231   �6      �          0    19174    discount 
   TABLE DATA           �   COPY public.discount (id, code, is_dynamic, rule_id, is_disabled, parent_discount_id, starts_at, ends_at, created_at, updated_at, deleted_at, metadata, usage_limit, usage_count, valid_duration) FROM stdin;
    public          postgres    false    232   �6      �          0    19183    discount_condition 
   TABLE DATA           �   COPY public.discount_condition (id, type, operator, discount_rule_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    233   f7      �          0    19190 !   discount_condition_customer_group 
   TABLE DATA           ~   COPY public.discount_condition_customer_group (customer_group_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    234   �7      �          0    19197    discount_condition_product 
   TABLE DATA           p   COPY public.discount_condition_product (product_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    235   8      �          0    19204 %   discount_condition_product_collection 
   TABLE DATA           �   COPY public.discount_condition_product_collection (product_collection_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    236   18      �          0    19211    discount_condition_product_tag 
   TABLE DATA           x   COPY public.discount_condition_product_tag (product_tag_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    237   �8      �          0    19218    discount_condition_product_type 
   TABLE DATA           z   COPY public.discount_condition_product_type (product_type_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    238   �8      �          0    19225    discount_regions 
   TABLE DATA           B   COPY public.discount_regions (discount_id, region_id) FROM stdin;
    public          postgres    false    239   �8      �          0    19230    discount_rule 
   TABLE DATA              COPY public.discount_rule (id, description, type, value, allocation, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    240   B9      �          0    19237    discount_rule_products 
   TABLE DATA           N   COPY public.discount_rule_products (discount_rule_id, product_id) FROM stdin;
    public          postgres    false    241   �:      �          0    19242    draft_order 
   TABLE DATA           �   COPY public.draft_order (id, status, display_id, cart_id, order_id, canceled_at, created_at, updated_at, completed_at, metadata, idempotency_key, no_notification_order) FROM stdin;
    public          postgres    false    242   ;      �          0    19251    fulfillment 
   TABLE DATA           �   COPY public.fulfillment (id, swap_id, order_id, tracking_numbers, data, shipped_at, canceled_at, created_at, updated_at, metadata, idempotency_key, provider_id, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    244   +;      �          0    19259    fulfillment_item 
   TABLE DATA           M   COPY public.fulfillment_item (fulfillment_id, item_id, quantity) FROM stdin;
    public          postgres    false    245   H;      �          0    19264    fulfillment_provider 
   TABLE DATA           @   COPY public.fulfillment_provider (id, is_installed) FROM stdin;
    public          postgres    false    246   e;      �          0    19270 	   gift_card 
   TABLE DATA           �   COPY public.gift_card (id, code, value, balance, region_id, order_id, is_disabled, ends_at, created_at, updated_at, deleted_at, metadata, tax_rate) FROM stdin;
    public          postgres    false    247   �;      �          0    19278    gift_card_transaction 
   TABLE DATA           u   COPY public.gift_card_transaction (id, gift_card_id, order_id, amount, created_at, is_taxable, tax_rate) FROM stdin;
    public          postgres    false    248   �;      �          0    19284    idempotency_key 
   TABLE DATA           �   COPY public.idempotency_key (id, idempotency_key, created_at, locked_at, request_method, request_params, request_path, response_code, response_body, recovery_point) FROM stdin;
    public          postgres    false    249   �;      �          0    19291    image 
   TABLE DATA           V   COPY public.image (id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    250   �;      �          0    19298    invite 
   TABLE DATA           �   COPY public.invite (id, user_email, role, accepted, created_at, updated_at, deleted_at, metadata, token, expires_at) FROM stdin;
    public          postgres    false    251   �>      �          0    19308 	   line_item 
   TABLE DATA           U  COPY public.line_item (id, cart_id, order_id, swap_id, title, description, thumbnail, is_giftcard, should_merge, allow_discounts, has_shipping, unit_price, variant_id, quantity, fulfilled_quantity, returned_quantity, shipped_quantity, created_at, updated_at, metadata, claim_order_id, is_return, original_item_id, order_edit_id) FROM stdin;
    public          postgres    false    252   �>      �          0    19323    line_item_adjustment 
   TABLE DATA           g   COPY public.line_item_adjustment (id, item_id, description, discount_id, amount, metadata) FROM stdin;
    public          postgres    false    253   �>      �          0    19328    line_item_tax_line 
   TABLE DATA           m   COPY public.line_item_tax_line (id, rate, name, code, created_at, updated_at, metadata, item_id) FROM stdin;
    public          postgres    false    254   ?      �          0    19335 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    255   3?      �          0    19341    money_amount 
   TABLE DATA           �   COPY public.money_amount (id, currency_code, amount, variant_id, region_id, created_at, updated_at, deleted_at, min_quantity, max_quantity, price_list_id) FROM stdin;
    public          postgres    false    257   �D      �          0    19348    note 
   TABLE DATA           ~   COPY public.note (id, value, resource_type, resource_id, author_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    258   �K      �          0    19355    notification 
   TABLE DATA           �   COPY public.notification (id, event_name, resource_type, resource_id, customer_id, "to", data, parent_id, provider_id, created_at, updated_at) FROM stdin;
    public          postgres    false    259   �K      �          0    19362    notification_provider 
   TABLE DATA           A   COPY public.notification_provider (id, is_installed) FROM stdin;
    public          postgres    false    260   L      �          0    19368    oauth 
   TABLE DATA           e   COPY public.oauth (id, display_name, application_name, install_url, uninstall_url, data) FROM stdin;
    public          postgres    false    261   3L      �          0    19373    order 
   TABLE DATA           G  COPY public."order" (id, status, fulfillment_status, payment_status, display_id, cart_id, customer_id, email, billing_address_id, shipping_address_id, region_id, currency_code, tax_rate, canceled_at, created_at, updated_at, metadata, idempotency_key, draft_order_id, no_notification, external_id, sales_channel_id) FROM stdin;
    public          postgres    false    262   PL      �          0    19383    order_discounts 
   TABLE DATA           @   COPY public.order_discounts (order_id, discount_id) FROM stdin;
    public          postgres    false    263   mL      �          0    19389 
   order_edit 
   TABLE DATA           �   COPY public.order_edit (id, created_at, updated_at, order_id, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, declined_at, canceled_by, canceled_at, payment_collection_id) FROM stdin;
    public          postgres    false    265   �L      �          0    19396    order_gift_cards 
   TABLE DATA           B   COPY public.order_gift_cards (order_id, gift_card_id) FROM stdin;
    public          postgres    false    266   �L      �          0    19401    order_item_change 
   TABLE DATA           �   COPY public.order_item_change (id, created_at, updated_at, deleted_at, type, order_edit_id, original_line_item_id, line_item_id) FROM stdin;
    public          postgres    false    267   �L      �          0    19408    payment 
   TABLE DATA           �   COPY public.payment (id, swap_id, cart_id, order_id, amount, currency_code, amount_refunded, provider_id, data, captured_at, canceled_at, created_at, updated_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    268   �L      �          0    19416    payment_collection 
   TABLE DATA           �   COPY public.payment_collection (id, created_at, updated_at, deleted_at, type, status, description, amount, authorized_amount, region_id, currency_code, metadata, created_by) FROM stdin;
    public          postgres    false    269   �L      �          0    19423    payment_collection_payments 
   TABLE DATA           X   COPY public.payment_collection_payments (payment_collection_id, payment_id) FROM stdin;
    public          postgres    false    270   M                 0    19428    payment_collection_sessions 
   TABLE DATA           `   COPY public.payment_collection_sessions (payment_collection_id, payment_session_id) FROM stdin;
    public          postgres    false    271   8M                0    19433    payment_provider 
   TABLE DATA           <   COPY public.payment_provider (id, is_installed) FROM stdin;
    public          postgres    false    272   UM                0    19439    payment_session 
   TABLE DATA           �   COPY public.payment_session (id, cart_id, provider_id, is_selected, status, data, created_at, updated_at, idempotency_key, payment_authorized_at, amount, is_initiated) FROM stdin;
    public          postgres    false    273   {M                0    19447 
   price_list 
   TABLE DATA           �   COPY public.price_list (id, name, description, type, status, starts_at, ends_at, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    274   �M                0    19456    price_list_customer_groups 
   TABLE DATA           V   COPY public.price_list_customer_groups (price_list_id, customer_group_id) FROM stdin;
    public          postgres    false    275   �M                0    19461    product 
   TABLE DATA           $  COPY public.product (id, title, subtitle, description, handle, is_giftcard, thumbnail, profile_id, weight, length, height, width, hs_code, origin_country, mid_code, material, created_at, updated_at, deleted_at, metadata, collection_id, type_id, discountable, status, external_id) FROM stdin;
    public          postgres    false    276   �M                0    19471    product_category 
   TABLE DATA           �   COPY public.product_category (id, name, handle, parent_category_id, mpath, is_active, is_internal, created_at, updated_at, rank) FROM stdin;
    public          postgres    false    277   �R                0    19482    product_category_product 
   TABLE DATA           S   COPY public.product_category_product (product_category_id, product_id) FROM stdin;
    public          postgres    false    278   �Y                0    19487    product_collection 
   TABLE DATA           m   COPY public.product_collection (id, title, handle, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    279   �Y      	          0    19494    product_images 
   TABLE DATA           >   COPY public.product_images (product_id, image_id) FROM stdin;
    public          postgres    false    280   A[      
          0    19499    product_option 
   TABLE DATA           m   COPY public.product_option (id, title, created_at, updated_at, deleted_at, metadata, product_id) FROM stdin;
    public          postgres    false    281   5]                0    19506    product_option_value 
   TABLE DATA           ~   COPY public.product_option_value (id, value, option_id, variant_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    282   �_                0    19513    product_sales_channel 
   TABLE DATA           M   COPY public.product_sales_channel (product_id, sales_channel_id) FROM stdin;
    public          postgres    false    283   �f                0    19518    product_tag 
   TABLE DATA           ^   COPY public.product_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    284   �g                0    19525    product_tags 
   TABLE DATA           B   COPY public.product_tags (product_id, product_tag_id) FROM stdin;
    public          postgres    false    285   �g                0    19530    product_tax_rate 
   TABLE DATA           a   COPY public.product_tax_rate (product_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    286   h                0    19537    product_type 
   TABLE DATA           _   COPY public.product_type (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    287   2h                0    19544    product_type_tax_rate 
   TABLE DATA           k   COPY public.product_type_tax_rate (product_type_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    288   �i                0    19551    product_variant 
   TABLE DATA             COPY public.product_variant (id, title, product_id, sku, barcode, ean, upc, inventory_quantity, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, created_at, updated_at, deleted_at, metadata, variant_rank) FROM stdin;
    public          postgres    false    289   �i                0    19561    product_variant_inventory_item 
   TABLE DATA           �   COPY public.product_variant_inventory_item (id, created_at, updated_at, inventory_item_id, variant_id, required_quantity, deleted_at) FROM stdin;
    public          postgres    false    290   �m                0    19569    publishable_api_key 
   TABLE DATA           t   COPY public.publishable_api_key (id, created_at, updated_at, created_by, revoked_by, revoked_at, title) FROM stdin;
    public          postgres    false    291   �m                0    19576 !   publishable_api_key_sales_channel 
   TABLE DATA           a   COPY public.publishable_api_key_sales_channel (sales_channel_id, publishable_key_id) FROM stdin;
    public          postgres    false    292   �m                0    19581    refund 
   TABLE DATA           �   COPY public.refund (id, order_id, amount, note, reason, created_at, updated_at, metadata, idempotency_key, payment_id) FROM stdin;
    public          postgres    false    293   n                0    19588    region 
   TABLE DATA           �   COPY public.region (id, name, currency_code, tax_rate, tax_code, created_at, updated_at, deleted_at, metadata, gift_cards_taxable, automatic_taxes, tax_provider_id) FROM stdin;
    public          postgres    false    294   (n                0    19597    region_fulfillment_providers 
   TABLE DATA           N   COPY public.region_fulfillment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    295   �n                0    19602    region_payment_providers 
   TABLE DATA           J   COPY public.region_payment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    296   o                0    19607    return 
   TABLE DATA           �   COPY public.return (id, status, swap_id, order_id, shipping_data, refund_amount, received_at, created_at, updated_at, metadata, idempotency_key, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    297   ko                0    19615    return_item 
   TABLE DATA           �   COPY public.return_item (return_id, item_id, quantity, is_requested, requested_quantity, received_quantity, metadata, reason_id, note) FROM stdin;
    public          postgres    false    298   �o                0    19621    return_reason 
   TABLE DATA           �   COPY public.return_reason (id, value, label, description, created_at, updated_at, deleted_at, metadata, parent_return_reason_id) FROM stdin;
    public          postgres    false    299   �o                0    19628    sales_channel 
   TABLE DATA           o   COPY public.sales_channel (id, created_at, updated_at, deleted_at, name, description, is_disabled) FROM stdin;
    public          postgres    false    300   �o                0    19636    sales_channel_location 
   TABLE DATA           w   COPY public.sales_channel_location (id, created_at, updated_at, sales_channel_id, location_id, deleted_at) FROM stdin;
    public          postgres    false    301   Ip                0    19643    shipping_method 
   TABLE DATA           �   COPY public.shipping_method (id, shipping_option_id, order_id, cart_id, swap_id, return_id, price, data, claim_order_id) FROM stdin;
    public          postgres    false    302   fp                 0    19650    shipping_method_tax_line 
   TABLE DATA           ~   COPY public.shipping_method_tax_line (id, rate, name, code, created_at, updated_at, metadata, shipping_method_id) FROM stdin;
    public          postgres    false    303   �p      !          0    19657    shipping_option 
   TABLE DATA           �   COPY public.shipping_option (id, name, region_id, profile_id, provider_id, price_type, amount, is_return, data, created_at, updated_at, deleted_at, metadata, admin_only) FROM stdin;
    public          postgres    false    304   �p      "          0    19667    shipping_option_requirement 
   TABLE DATA           g   COPY public.shipping_option_requirement (id, shipping_option_id, type, amount, deleted_at) FROM stdin;
    public          postgres    false    305   ;r      #          0    19672    shipping_profile 
   TABLE DATA           h   COPY public.shipping_profile (id, name, type, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    306   Xr      $          0    19679    shipping_tax_rate 
   TABLE DATA           j   COPY public.shipping_tax_rate (shipping_option_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    307   �r      %          0    19686 
   staged_job 
   TABLE DATA           C   COPY public.staged_job (id, event_name, data, options) FROM stdin;
    public          postgres    false    308   s      &          0    19692    store 
   TABLE DATA           �   COPY public.store (id, name, default_currency_code, swap_link_template, created_at, updated_at, metadata, payment_link_template, invite_link_template, default_sales_channel_id, default_location_id) FROM stdin;
    public          postgres    false    309   7s      '          0    19701    store_currencies 
   TABLE DATA           C   COPY public.store_currencies (store_id, currency_code) FROM stdin;
    public          postgres    false    310   �s      (          0    19706    swap 
   TABLE DATA           �   COPY public.swap (id, fulfillment_status, payment_status, order_id, difference_due, shipping_address_id, cart_id, confirmed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification, canceled_at, allow_backorder) FROM stdin;
    public          postgres    false    311   t      )          0    19714    tax_provider 
   TABLE DATA           8   COPY public.tax_provider (id, is_installed) FROM stdin;
    public          postgres    false    312   (t      *          0    19720    tax_rate 
   TABLE DATA           e   COPY public.tax_rate (id, rate, code, name, region_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    313   Et      +          0    19727    tracking_link 
   TABLE DATA           �   COPY public.tracking_link (id, url, tracking_number, fulfillment_id, created_at, updated_at, deleted_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    314   bt      ,          0    19734    user 
   TABLE DATA           �   COPY public."user" (id, email, first_name, last_name, password_hash, api_token, created_at, updated_at, deleted_at, metadata, role) FROM stdin;
    public          postgres    false    315   t      7           0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 250, true);
          public          postgres    false    226            8           0    0    draft_order_display_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.draft_order_display_id_seq', 1, false);
          public          postgres    false    243            9           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 62, true);
          public          postgres    false    256            :           0    0    order_display_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.order_display_id_seq', 1, false);
          public          postgres    false    264            �           2606    19747    payment_session OneSelected 
   CONSTRAINT     h   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "OneSelected" UNIQUE (cart_id, is_selected);
 G   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "OneSelected";
       public            postgres    false    273    273            �           2606    19749 +   money_amount PK_022e49a7e21a8dfb820f788778a 
   CONSTRAINT     k   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "PK_022e49a7e21a8dfb820f788778a" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "PK_022e49a7e21a8dfb820f788778a";
       public            postgres    false    257            �           2606    19751 4   notification_provider PK_0425c2423e2ce9fdfd5c23761d9 
   CONSTRAINT     t   ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.notification_provider DROP CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9";
       public            postgres    false    260            �           2606    19753 /   store_currencies PK_0f2bff3bccc785c320a4df836de 
   CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "PK_0f2bff3bccc785c320a4df836de" PRIMARY KEY (store_id, currency_code);
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "PK_0f2bff3bccc785c320a4df836de";
       public            postgres    false    310    310            �           2606    19755 $   order PK_1031171c13130102495201e3e20 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "PK_1031171c13130102495201e3e20";
       public            postgres    false    262                       2606    19757 -   cart_discounts PK_10bd412c9071ccc0cf555afd9bb 
   CONSTRAINT        ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb" PRIMARY KEY (cart_id, discount_id);
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb";
       public            postgres    false    218    218                       2606    19759 -   product_images PK_10de97980da2e939c4c0e8423f2 
   CONSTRAINT        ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "PK_10de97980da2e939c4c0e8423f2" PRIMARY KEY (product_id, image_id);
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "PK_10de97980da2e939c4c0e8423f2";
       public            postgres    false    280    280            #           2606    19761 *   product_tag PK_1439455c6528caa94fcc8564fda 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT "PK_1439455c6528caa94fcc8564fda" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_tag DROP CONSTRAINT "PK_1439455c6528caa94fcc8564fda";
       public            postgres    false    284            j           2606    19763 /   discount_regions PK_15974566a8b6e04a7c754e85b75 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "PK_15974566a8b6e04a7c754e85b75" PRIMARY KEY (discount_id, region_id);
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "PK_15974566a8b6e04a7c754e85b75";
       public            postgres    false    239    239            8           2606    19765 .   product_variant PK_1ab69c9935c61f7c70791ae0a9f 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f";
       public            postgres    false    289                       2606    19767 9   price_list_customer_groups PK_1afcbe15cc8782dc80c05707df9 
   CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9" PRIMARY KEY (price_list_id, customer_group_id);
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9";
       public            postgres    false    275    275            '           2606    19769 +   product_tags PK_1cf5c9537e7198df494b71b993f 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "PK_1cf5c9537e7198df494b71b993f" PRIMARY KEY (product_id, product_tag_id);
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "PK_1cf5c9537e7198df494b71b993f";
       public            postgres    false    285    285            �           2606    19771 .   idempotency_key PK_213f125e14469be304f9ff1d452 
   CONSTRAINT     n   ALTER TABLE ONLY public.idempotency_key
    ADD CONSTRAINT "PK_213f125e14469be304f9ff1d452" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.idempotency_key DROP CONSTRAINT "PK_213f125e14469be304f9ff1d452";
       public            postgres    false    249                       2606    19773 .   cart_gift_cards PK_2389be82bf0ef3635e2014c9ef1 
   CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1" PRIMARY KEY (cart_id, gift_card_id);
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1";
       public            postgres    false    219    219            �           2606    19775 '   tax_rate PK_23b71b53f650c0b39e99ccef4fd 
   CONSTRAINT     g   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd";
       public            postgres    false    313                       2606    19777 3   product_option_value PK_2ab71ed3b21be5800905c621535 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "PK_2ab71ed3b21be5800905c621535" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "PK_2ab71ed3b21be5800905c621535";
       public            postgres    false    282            �           2606    19779 3   line_item_adjustment PK_2b1360103753df2dc8257c2c8c3 
   CONSTRAINT     s   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3";
       public            postgres    false    253            y           2606    19781 .   shipping_option PK_2e56fddaa65f3a26d402e5d786e 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e";
       public            postgres    false    304            +           2606    19783 /   product_tax_rate PK_326257ce468df46cd5c8c5922e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "PK_326257ce468df46cd5c8c5922e9" PRIMARY KEY (product_id, rate_id);
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "PK_326257ce468df46cd5c8c5922e9";
       public            postgres    false    286    286            p           2606    19785 5   discount_rule_products PK_351c8c92f5d27283c445cd022ee 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "PK_351c8c92f5d27283c445cd022ee" PRIMARY KEY (discount_rule_id, product_id);
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "PK_351c8c92f5d27283c445cd022ee";
       public            postgres    false    241    241            f           2606    19787 >   discount_condition_product_type PK_35d538a5a24399d0df978df12ed 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "PK_35d538a5a24399d0df978df12ed" PRIMARY KEY (product_type_id, condition_id);
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "PK_35d538a5a24399d0df978df12ed";
       public            postgres    false    238    238            \           2606    19789 *   return_item PK_46409dc1dd5f38509b9000c3069 
   CONSTRAINT     z   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "PK_46409dc1dd5f38509b9000c3069" PRIMARY KEY (return_id, item_id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "PK_46409dc1dd5f38509b9000c3069";
       public            postgres    false    298    298            �           2606    19791 /   order_gift_cards PK_49a8ec66a6625d7c2e3526e05b4 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4" PRIMARY KEY (order_id, gift_card_id);
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4";
       public            postgres    false    266    266                       2606    19793 1   product_collection PK_49d419fc77d3aed46c835c558ac 
   CONSTRAINT     q   ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT "PK_49d419fc77d3aed46c835c558ac" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.product_collection DROP CONSTRAINT "PK_49d419fc77d3aed46c835c558ac";
       public            postgres    false    279            �           2606    19795 1   line_item_tax_line PK_4a0f4322fcd5ce4af85727f89a8 
   CONSTRAINT     q   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8";
       public            postgres    false    254            �           2606    19797 #   swap PK_4a10d0f359339acef77e7f986d9 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "PK_4a10d0f359339acef77e7f986d9" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "PK_4a10d0f359339acef77e7f986d9";
       public            postgres    false    311                       2606    19799 -   product_option PK_4cf3c467e9bc764bdd32c4cd938 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938";
       public            postgres    false    281                       2606    19801 *   fulfillment PK_50c102da132afffae660585981f 
   CONSTRAINT     j   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "PK_50c102da132afffae660585981f";
       public            postgres    false    244            �           2606    19803 )   price_list PK_52ea7826468b1c889cb2c28df03 
   CONSTRAINT     i   ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT "PK_52ea7826468b1c889cb2c28df03" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.price_list DROP CONSTRAINT "PK_52ea7826468b1c889cb2c28df03";
       public            postgres    false    274            (           2606    19805 .   claim_item_tags PK_54ab8ce0f7e99167068188fbd81 
   CONSTRAINT     {   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81" PRIMARY KEY (item_id, tag_id);
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81";
       public            postgres    false    222    222            r           2606    19807 7   shipping_method_tax_line PK_54c94f5908aacbd51cf0a73edb1 
   CONSTRAINT     w   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1" PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1";
       public            postgres    false    303            $           2606    19809 )   claim_item PK_5679662039bc4c7c6bc7fa1be2d 
   CONSTRAINT     i   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d";
       public            postgres    false    221            �           2606    19811 )   order_edit PK_58ab6acf2e84b4e827f5f846f7a 
   CONSTRAINT     i   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a";
       public            postgres    false    265            M           2606    19813 ;   region_fulfillment_providers PK_5b7d928a1fb50d6803868cfab3a 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a" PRIMARY KEY (region_id, provider_id);
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a";
       public            postgres    false    295    295            I           2606    19815 %   region PK_5f48ffc3af96bc486f5f3f3a6da 
   CONSTRAINT     e   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da";
       public            postgres    false    294            B           2606    19817 @   publishable_api_key_sales_channel PK_68eaeb14bdac8954460054c567c 
   CONSTRAINT     �   ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT "PK_68eaeb14bdac8954460054c567c" PRIMARY KEY (sales_channel_id, publishable_key_id);
 l   ALTER TABLE ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT "PK_68eaeb14bdac8954460054c567c";
       public            postgres    false    292    292            �           2606    19819 +   notification PK_705b6c7cdf9b2c2ff7ac7872cb7 
   CONSTRAINT     k   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7";
       public            postgres    false    259            5           2606    19821 '   currency PK_723472e41cae44beb0763f4039c 
   CONSTRAINT     i   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT "PK_723472e41cae44beb0763f4039c" PRIMARY KEY (code);
 S   ALTER TABLE ONLY public.currency DROP CONSTRAINT "PK_723472e41cae44beb0763f4039c";
       public            postgres    false    227            /           2606    19823 (   claim_tag PK_7761180541142a5926501018d34 
   CONSTRAINT     h   ALTER TABLE ONLY public.claim_tag
    ADD CONSTRAINT "PK_7761180541142a5926501018d34" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.claim_tag DROP CONSTRAINT "PK_7761180541142a5926501018d34";
       public            postgres    false    224                       2606    19825 *   claim_image PK_7c49e44bfe8840ca7d917890101 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "PK_7c49e44bfe8840ca7d917890101" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "PK_7c49e44bfe8840ca7d917890101";
       public            postgres    false    220            E           2606    19827 -   customer_group PK_88e7da3ff7262d9e0a35aa3664e 
   CONSTRAINT     m   ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.customer_group DROP CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e";
       public            postgres    false    230            ,           2606    19829 *   claim_order PK_8981f5595a4424021466aa4c7a4 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "PK_8981f5595a4424021466aa4c7a4" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "PK_8981f5595a4424021466aa4c7a4";
       public            postgres    false    223            �           2606    19831 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    255            9           2606    19833 5   custom_shipping_option PK_8dfcb5c1172c29eec4a728420cc 
   CONSTRAINT     u   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc";
       public            postgres    false    228            	           2606    19835 /   analytics_config PK_93505647c5d7cb479becb810b0f 
   CONSTRAINT     o   ALTER TABLE ONLY public.analytics_config
    ADD CONSTRAINT "PK_93505647c5d7cb479becb810b0f" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.analytics_config DROP CONSTRAINT "PK_93505647c5d7cb479becb810b0f";
       public            postgres    false    215            _           2606    19837 ,   return_reason PK_95fd1172973165790903e65660a 
   CONSTRAINT     l   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "PK_95fd1172973165790903e65660a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "PK_95fd1172973165790903e65660a";
       public            postgres    false    299            �           2606    19839 #   note PK_96d0c172a4fba276b1bbed43058 
   CONSTRAINT     c   ALTER TABLE ONLY public.note
    ADD CONSTRAINT "PK_96d0c172a4fba276b1bbed43058" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.note DROP CONSTRAINT "PK_96d0c172a4fba276b1bbed43058";
       public            postgres    false    258            Z           2606    19841 9   discount_condition_product PK_994eb4529fdbf14450d64ec17e8 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8" PRIMARY KEY (product_id, condition_id);
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8";
       public            postgres    false    235    235            <           2606    19843 =   product_variant_inventory_item PK_9a1188b8d36f4d198303b4f7efa 
   CONSTRAINT     }   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa" PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa";
       public            postgres    false    290            �           2606    19845 )   staged_job PK_9a28fb48c46c5509faf43ac8c8d 
   CONSTRAINT     i   ALTER TABLE ONLY public.staged_job
    ADD CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.staged_job DROP CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d";
       public            postgres    false    308            @           2606    19847 2   publishable_api_key PK_9e613278673a87de92c606b4494 
   CONSTRAINT     r   ALTER TABLE ONLY public.publishable_api_key
    ADD CONSTRAINT "PK_9e613278673a87de92c606b4494" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.publishable_api_key DROP CONSTRAINT "PK_9e613278673a87de92c606b4494";
       public            postgres    false    291            Q           2606    19849 7   region_payment_providers PK_9fa1e69914d3dd752de6b1da407 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407" PRIMARY KEY (region_id, provider_id);
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407";
       public            postgres    false    296    296            |           2606    19851 :   shipping_option_requirement PK_a0ff15442606d9f783602cb23a7 
   CONSTRAINT     z   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "PK_a0ff15442606d9f783602cb23a7" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "PK_a0ff15442606d9f783602cb23a7";
       public            postgres    false    305            �           2606    19853 .   payment_session PK_a1a91b20f7f3b1e5afb5485cbcd 
   CONSTRAINT     n   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd";
       public            postgres    false    273            �           2606    19855 .   order_discounts PK_a7418714ffceebc125bf6d8fcfe 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe" PRIMARY KEY (order_id, discount_id);
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe";
       public            postgres    false    263    263            >           2606    19857 '   customer PK_a7a13f4cacb744524e44dfdad32 
   CONSTRAINT     g   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32";
       public            postgres    false    229            b           2606    19859 =   discount_condition_product_tag PK_a95382c1e62205b121aa058682b 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "PK_a95382c1e62205b121aa058682b" PRIMARY KEY (product_tag_id, condition_id);
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "PK_a95382c1e62205b121aa058682b";
       public            postgres    false    237    237            �           2606    19861 $   oauth PK_a957b894e50eb16b969c0640a8d 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth
    ADD CONSTRAINT "PK_a957b894e50eb16b969c0640a8d" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth DROP CONSTRAINT "PK_a957b894e50eb16b969c0640a8d";
       public            postgres    false    261            l           2606    19863 ,   discount_rule PK_ac2c280de3701b2d66f6817f760 
   CONSTRAINT     l   ALTER TABLE ONLY public.discount_rule
    ADD CONSTRAINT "PK_ac2c280de3701b2d66f6817f760" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.discount_rule DROP CONSTRAINT "PK_ac2c280de3701b2d66f6817f760";
       public            postgres    false    240            �           2606    19865 (   gift_card PK_af4e338d2d41035042843ad641f 
   CONSTRAINT     h   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "PK_af4e338d2d41035042843ad641f" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "PK_af4e338d2d41035042843ad641f";
       public            postgres    false    247            e           2606    19867 5   sales_channel_location PK_afd2c2c52634bc8280a9c9ee533 
   CONSTRAINT     u   ALTER TABLE ONLY public.sales_channel_location
    ADD CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.sales_channel_location DROP CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533";
       public            postgres    false    301            �           2606    19869 +   tax_provider PK_b198bf82ba6a317c11763d99b99 
   CONSTRAINT     k   ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT "PK_b198bf82ba6a317c11763d99b99" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tax_provider DROP CONSTRAINT "PK_b198bf82ba6a317c11763d99b99";
       public            postgres    false    312            ^           2606    19871 D   discount_condition_product_collection PK_b3508fc787aa4a38705866cbb6d 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d" PRIMARY KEY (product_collection_id, condition_id);
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d";
       public            postgres    false    236    236            m           2606    19873 .   shipping_method PK_b9b0adfad3c6b99229c1e7d4865 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865";
       public            postgres    false    302            �           2606    19875 /   fulfillment_item PK_bc3e8a388de75db146a249922e0 
   CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "PK_bc3e8a388de75db146a249922e0" PRIMARY KEY (fulfillment_id, item_id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "PK_bc3e8a388de75db146a249922e0";
       public            postgres    false    245    245            �           2606    19877 0   shipping_tax_rate PK_bcd93b14d7e2695365d383f5eae 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae" PRIMARY KEY (shipping_option_id, rate_id);
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae";
       public            postgres    false    307    307            �           2606    19879 3   fulfillment_provider PK_beb35a6de60a6c4f91d5ae57e44 
   CONSTRAINT     s   ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.fulfillment_provider DROP CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44";
       public            postgres    false    246                       2606    19881 &   product PK_bebc9158e480b949565b4dc7a82 
   CONSTRAINT     f   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
       public            postgres    false    276            3           2606    19883 &   country PK_bf6e37c231c4f4ea56dcd887269 
   CONSTRAINT     f   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269";
       public            postgres    false    225                       2606    19885 #   cart PK_c524ec48751b9b5bcfbf6e59be7 
   CONSTRAINT     c   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7";
       public            postgres    false    217            ~           2606    19887 /   shipping_profile PK_c8120e4543a5a3a121f2968a1ec 
   CONSTRAINT     o   ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.shipping_profile DROP CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec";
       public            postgres    false    306            V           2606    19889 %   return PK_c8ad68d13e76d75d803b5aeebc4 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4";
       public            postgres    false    297            �           2606    19891 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    315            �           2606    19893 (   line_item PK_cce6b13e67fa506d1d9618ac68b 
   CONSTRAINT     h   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b";
       public            postgres    false    252            V           2606    19895 @   discount_condition_customer_group PK_cdc8b2277169a16b8b7d4c73e0e 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e" PRIMARY KEY (customer_group_id, condition_id);
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e";
       public            postgres    false    234    234            �           2606    19897 4   gift_card_transaction PK_cfb5b4ba5447a507aef87d73fe7 
   CONSTRAINT     t   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7";
       public            postgres    false    248            M           2606    19899 '   discount PK_d05d8712e429673e459e7f1cddb 
   CONSTRAINT     g   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "PK_d05d8712e429673e459e7f1cddb" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "PK_d05d8712e429673e459e7f1cddb";
       public            postgres    false    232            a           2606    19901 ,   sales_channel PK_d1eb0b923ea5a0eb1e0916191f1 
   CONSTRAINT     l   ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.sales_channel DROP CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1";
       public            postgres    false    300            �           2606    19903 $   image PK_d6db1ab4ee9ad9dbe86c64e4cc3 
   CONSTRAINT     d   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3";
       public            postgres    false    250            �           2606    19905 0   order_item_change PK_d6eb138f77ffdee83567b85af0c 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c";
       public            postgres    false    267                       2606    19907 &   address PK_d92de1f82754668b5f5f5dd4fd5 
   CONSTRAINT     f   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5";
       public            postgres    false    214            1           2606    19909 4   product_type_tax_rate PK_ddc9242de1d99bc7674969289f0 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "PK_ddc9242de1d99bc7674969289f0" PRIMARY KEY (product_type_id, rate_id);
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "PK_ddc9242de1d99bc7674969289f0";
       public            postgres    false    288    288            -           2606    19911 +   product_type PK_e0843930fbb8854fe36ca39dae1 
   CONSTRAINT     k   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.product_type DROP CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1";
       public            postgres    false    287            I           2606    19913 7   customer_group_customers PK_e28a55e34ad1e2d3df9a0ac86d3 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3" PRIMARY KEY (customer_group_id, customer_id);
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3";
       public            postgres    false    231    231                       2606    19915 (   batch_job PK_e57f84d485145d5be96bc6d871e 
   CONSTRAINT     h   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "PK_e57f84d485145d5be96bc6d871e" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "PK_e57f84d485145d5be96bc6d871e";
       public            postgres    false    216            P           2606    19917 1   discount_condition PK_e6b81d83133ddc21a2baf2e2204 
   CONSTRAINT     q   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204";
       public            postgres    false    233            �           2606    19919 /   payment_provider PK_ea94f42b6c88e9191c3649d7522 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.payment_provider DROP CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522";
       public            postgres    false    272            F           2606    19921 %   refund PK_f1cefa2e60d99b206c46c1116e5 
   CONSTRAINT     e   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5";
       public            postgres    false    293            �           2606    19923 $   store PK_f3172007d4de5ae8e7692759d79 
   CONSTRAINT     d   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "PK_f3172007d4de5ae8e7692759d79" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "PK_f3172007d4de5ae8e7692759d79";
       public            postgres    false    309            u           2606    19925 *   draft_order PK_f478946c183d98f8d88a94cfcd7 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7";
       public            postgres    false    242            �           2606    19927 %   invite PK_fc9fa190e5a3c5d80604a4f63e1 
   CONSTRAINT     e   ALTER TABLE ONLY public.invite
    ADD CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.invite DROP CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1";
       public            postgres    false    251            �           2606    19929 &   payment PK_fcaec7df5adf9cac408c686b2ab 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab";
       public            postgres    false    268            �           2606    19931 ,   tracking_link PK_fcfd77feb9012ec2126d7c0bfb6 
   CONSTRAINT     l   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6";
       public            postgres    false    314            !           2606    19933 4   product_sales_channel PK_fd29b6a8bd641052628dee19583 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "PK_fd29b6a8bd641052628dee19583" PRIMARY KEY (product_id, sales_channel_id);
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "PK_fd29b6a8bd641052628dee19583";
       public            postgres    false    283    283            �           2606    19935 +   payment_collection PK_payment_collection_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "PK_payment_collection_id" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "PK_payment_collection_id";
       public            postgres    false    269            �           2606    19937 :   payment_collection_payments PK_payment_collection_payments 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "PK_payment_collection_payments" PRIMARY KEY (payment_collection_id, payment_id);
 f   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "PK_payment_collection_payments";
       public            postgres    false    270    270            �           2606    19939 :   payment_collection_sessions PK_payment_collection_sessions 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "PK_payment_collection_sessions" PRIMARY KEY (payment_collection_id, payment_session_id);
 f   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "PK_payment_collection_sessions";
       public            postgres    false    271    271                       2606    19941 /   product_category PK_qgguwbn1cwstxk93efl0px9oqwt 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.product_category DROP CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt";
       public            postgres    false    277            o           2606    19943 .   shipping_method REL_1d9ad62038998c3a85c77a53cf 
   CONSTRAINT     p   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf" UNIQUE (return_id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    302            �           2606    19945 #   swap REL_402e8182bc553e082f6380020b 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "REL_402e8182bc553e082f6380020b" UNIQUE (cart_id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "REL_402e8182bc553e082f6380020b";
       public            postgres    false    311            w           2606    19947 *   draft_order REL_5bd11d0e2a9628128e2c26fd0a 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a" UNIQUE (cart_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    242            �           2606    19949 0   order_item_change REL_5f9688929761f7df108b630e64 
   CONSTRAINT     u   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "REL_5f9688929761f7df108b630e64" UNIQUE (line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "REL_5f9688929761f7df108b630e64";
       public            postgres    false    267            @           2606    19951 '   customer REL_8abe81b9aac151ae60bf507ad1 
   CONSTRAINT     r   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1" UNIQUE (billing_address_id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    229            y           2606    19953 *   draft_order REL_8f6dd6c49202f1466ebf21e77d 
   CONSTRAINT     k   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d" UNIQUE (order_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    242                       2606    19955 #   cart REL_9d1a161434c610aae7c3df2dc7 
   CONSTRAINT     f   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7" UNIQUE (payment_id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    217            X           2606    19957 %   return REL_bad82d7bff2b08b87094bfac3d 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d" UNIQUE (swap_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    297            �           2606    19959 &   payment REL_c17aff091441b7c25ec3d68d36 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "REL_c17aff091441b7c25ec3d68d36" UNIQUE (swap_id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "REL_c17aff091441b7c25ec3d68d36";
       public            postgres    false    268            �           2606    19961 $   order REL_c99a206eb11ad45f6b7f04f2dc 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc" UNIQUE (cart_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    262            ;           2606    19963 5   custom_shipping_option UQ_0f838b122a9a01d921aa1cdb669 
   CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669" UNIQUE (shipping_option_id, cart_id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669";
       public            postgres    false    228    228            �           2606    19965 1   line_item_tax_line UQ_3c2af51043ed7243e7d9775a2ad 
   CONSTRAINT     w   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad" UNIQUE (item_id, code);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad";
       public            postgres    false    254    254            �           2606    19967 0   order_item_change UQ_5b7a99181e4db2ea821be0b6196 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196" UNIQUE (order_edit_id, original_line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196";
       public            postgres    false    267    267            �           2606    19969 $   store UQ_61b0f48cccbb5f41c750bac7286 
   CONSTRAINT     u   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286" UNIQUE (default_sales_channel_id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286";
       public            postgres    false    309            Z           2606    19971 %   return UQ_71773d56eb2bacb922bc3283398 
   CONSTRAINT     l   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "UQ_71773d56eb2bacb922bc3283398" UNIQUE (claim_order_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "UQ_71773d56eb2bacb922bc3283398";
       public            postgres    false    297            �           2606    19973 $   order UQ_727b872f86c7378474a8fa46147 
   CONSTRAINT     m   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "UQ_727b872f86c7378474a8fa46147" UNIQUE (draft_order_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "UQ_727b872f86c7378474a8fa46147";
       public            postgres    false    262            >           2606    19975 =   product_variant_inventory_item UQ_c9be7c1b11a1a729eb51d1b6bca 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca" UNIQUE (variant_id, inventory_item_id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca";
       public            postgres    false    290    290            t           2606    19977 7   shipping_method_tax_line UQ_cd147fca71e50bc954139fa3104 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "UQ_cd147fca71e50bc954139fa3104" UNIQUE (shipping_method_id, code);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "UQ_cd147fca71e50bc954139fa3104";
       public            postgres    false    303    303            �           2606    19979 0   order_item_change UQ_da93cee3ca0dd50a5246268c2e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9" UNIQUE (order_edit_id, line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9";
       public            postgres    false    267    267            B           2606    19981 9   customer UQ_unique_email_for_guests_and_customer_accounts 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "UQ_unique_email_for_guests_and_customer_accounts" UNIQUE (email, has_account);
 e   ALTER TABLE ONLY public.customer DROP CONSTRAINT "UQ_unique_email_for_guests_and_customer_accounts";
       public            postgres    false    229    229            R           2606    19983    discount_condition dctypeuniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT dctypeuniq UNIQUE (type, operator, discount_rule_id);
 G   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT dctypeuniq;
       public            postgres    false    233    233    233            �           2606    19985    gift_card_transaction gcuniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT gcuniq UNIQUE (gift_card_id, order_id);
 F   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT gcuniq;
       public            postgres    false    248    248            ]           1259    19986    IDX_00605f9d662c06b81c1b60ce24    INDEX     b   CREATE UNIQUE INDEX "IDX_00605f9d662c06b81c1b60ce24" ON public.return_reason USING btree (value);
 4   DROP INDEX public."IDX_00605f9d662c06b81c1b60ce24";
       public            postgres    false    299            z           1259    19987    IDX_012a62ba743e427b5ebe9dee18    INDEX     v   CREATE INDEX "IDX_012a62ba743e427b5ebe9dee18" ON public.shipping_option_requirement USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_012a62ba743e427b5ebe9dee18";
       public            postgres    false    305            _           1259    19988    IDX_01486cc9dc6b36bf658685535f    INDEX     u   CREATE INDEX "IDX_01486cc9dc6b36bf658685535f" ON public.discount_condition_product_tag USING btree (product_tag_id);
 4   DROP INDEX public."IDX_01486cc9dc6b36bf658685535f";
       public            postgres    false    237            )           1259    19989    IDX_017d58bf8260c6e1a2588d258e    INDEX     g   CREATE INDEX "IDX_017d58bf8260c6e1a2588d258e" ON public.claim_order USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_017d58bf8260c6e1a2588d258e";
       public            postgres    false    223            2           1259    19990    IDX_045d4a149c09f4704e0bc08dd4    INDEX     �   CREATE UNIQUE INDEX "IDX_045d4a149c09f4704e0bc08dd4" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_045d4a149c09f4704e0bc08dd4";
       public            postgres    false    289    289                       1259    19991    IDX_0fb38b6d167793192bc126d835    INDEX     d   CREATE INDEX "IDX_0fb38b6d167793192bc126d835" ON public.cart_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_0fb38b6d167793192bc126d835";
       public            postgres    false    219            �           1259    19992    IDX_0fc1ec4e3db9001ad60c19daf1    INDEX     c   CREATE INDEX "IDX_0fc1ec4e3db9001ad60c19daf1" ON public.order_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_0fc1ec4e3db9001ad60c19daf1";
       public            postgres    false    263            �           1259    19993    IDX_118e3c48f09a7728f41023c94e    INDEX     `   CREATE INDEX "IDX_118e3c48f09a7728f41023c94e" ON public.line_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_118e3c48f09a7728f41023c94e";
       public            postgres    false    252            �           1259    19994    IDX_17a06d728e4cfbc5bd2ddb70af    INDEX     _   CREATE INDEX "IDX_17a06d728e4cfbc5bd2ddb70af" ON public.money_amount USING btree (variant_id);
 4   DROP INDEX public."IDX_17a06d728e4cfbc5bd2ddb70af";
       public            postgres    false    257            �           1259    19995    IDX_19b0c6293443d1b464f604c331    INDEX     c   CREATE INDEX "IDX_19b0c6293443d1b464f604c331" ON public."order" USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_19b0c6293443d1b464f604c331";
       public            postgres    false    262            (           1259    19996    IDX_1d04aebeabb6a89f87e536a124    INDEX     c   CREATE INDEX "IDX_1d04aebeabb6a89f87e536a124" ON public.product_tax_rate USING btree (product_id);
 4   DROP INDEX public."IDX_1d04aebeabb6a89f87e536a124";
       public            postgres    false    286            f           1259    19997    IDX_1d9ad62038998c3a85c77a53cf    INDEX     a   CREATE INDEX "IDX_1d9ad62038998c3a85c77a53cf" ON public.shipping_method USING btree (return_id);
 4   DROP INDEX public."IDX_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    302            $           1259    19998    IDX_21683a063fe82dafdf681ecc9c    INDEX     c   CREATE INDEX "IDX_21683a063fe82dafdf681ecc9c" ON public.product_tags USING btree (product_tag_id);
 4   DROP INDEX public."IDX_21683a063fe82dafdf681ecc9c";
       public            postgres    false    285                       1259    19999    IDX_21cbfedd83d736d86f4c6f4ce5    INDEX     a   CREATE INDEX "IDX_21cbfedd83d736d86f4c6f4ce5" ON public.claim_image USING btree (claim_item_id);
 4   DROP INDEX public."IDX_21cbfedd83d736d86f4c6f4ce5";
       public            postgres    false    220                       1259    20000    IDX_2212515ba306c79f42c46a99db    INDEX     _   CREATE INDEX "IDX_2212515ba306c79f42c46a99db" ON public.product_images USING btree (image_id);
 4   DROP INDEX public."IDX_2212515ba306c79f42c46a99db";
       public            postgres    false    280                       1259    20001    IDX_242205c81c1152fab1b6e84847    INDEX     X   CREATE INDEX "IDX_242205c81c1152fab1b6e84847" ON public.cart USING btree (customer_id);
 4   DROP INDEX public."IDX_242205c81c1152fab1b6e84847";
       public            postgres    false    217            )           1259    20002    IDX_2484cf14c437a04586b07e7ddd    INDEX     `   CREATE INDEX "IDX_2484cf14c437a04586b07e7ddd" ON public.product_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_2484cf14c437a04586b07e7ddd";
       public            postgres    false    286            .           1259    20003    IDX_25a3138bb236f63d9bb6c8ff11    INDEX     m   CREATE INDEX "IDX_25a3138bb236f63d9bb6c8ff11" ON public.product_type_tax_rate USING btree (product_type_id);
 4   DROP INDEX public."IDX_25a3138bb236f63d9bb6c8ff11";
       public            postgres    false    288            �           1259    20004    IDX_27283ee631862266d0f1c68064    INDEX     Y   CREATE INDEX "IDX_27283ee631862266d0f1c68064" ON public.line_item USING btree (cart_id);
 4   DROP INDEX public."IDX_27283ee631862266d0f1c68064";
       public            postgres    false    252            3           1259    20005    IDX_2ca8cfbdafb998ecfd6d340389    INDEX     }   CREATE UNIQUE INDEX "IDX_2ca8cfbdafb998ecfd6d340389" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_2ca8cfbdafb998ecfd6d340389";
       public            postgres    false    289    289            �           1259    20006    IDX_2f41b20a71f30e60471d7e3769    INDEX     h   CREATE INDEX "IDX_2f41b20a71f30e60471d7e3769" ON public.line_item_adjustment USING btree (discount_id);
 4   DROP INDEX public."IDX_2f41b20a71f30e60471d7e3769";
       public            postgres    false    253            �           1259    20007    IDX_3287f98befad26c3a7dab088cf    INDEX     X   CREATE INDEX "IDX_3287f98befad26c3a7dab088cf" ON public.note USING btree (resource_id);
 4   DROP INDEX public."IDX_3287f98befad26c3a7dab088cf";
       public            postgres    false    258                       1259    20008    IDX_346e0016cf045b998074774764    INDEX     a   CREATE INDEX "IDX_346e0016cf045b998074774764" ON public.shipping_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_346e0016cf045b998074774764";
       public            postgres    false    307                       1259    20009    IDX_37341bad297fe5cca91f921032    INDEX     n   CREATE INDEX "IDX_37341bad297fe5cca91f921032" ON public.product_sales_channel USING btree (sales_channel_id);
 4   DROP INDEX public."IDX_37341bad297fe5cca91f921032";
       public            postgres    false    283                       1259    20010    IDX_379ca70338ce9991f3affdeedf    INDEX     �   CREATE UNIQUE INDEX "IDX_379ca70338ce9991f3affdeedf" ON public.analytics_config USING btree (id, user_id) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_379ca70338ce9991f3affdeedf";
       public            postgres    false    215    215    215            J           1259    20011    IDX_37f361c38a18d12a3fa3158d0c    INDEX     p   CREATE INDEX "IDX_37f361c38a18d12a3fa3158d0c" ON public.region_fulfillment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_37f361c38a18d12a3fa3158d0c";
       public            postgres    false    295            N           1259    20012    IDX_3a6947180aeec283cd92c59ebb    INDEX     l   CREATE INDEX "IDX_3a6947180aeec283cd92c59ebb" ON public.region_payment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_3a6947180aeec283cd92c59ebb";
       public            postgres    false    296            F           1259    20013    IDX_3c6412d076292f439269abe1a2    INDEX     l   CREATE INDEX "IDX_3c6412d076292f439269abe1a2" ON public.customer_group_customers USING btree (customer_id);
 4   DROP INDEX public."IDX_3c6412d076292f439269abe1a2";
       public            postgres    false    231            �           1259    20014    IDX_3fa354d8d1233ff81097b2fcb6    INDEX     Y   CREATE INDEX "IDX_3fa354d8d1233ff81097b2fcb6" ON public.line_item USING btree (swap_id);
 4   DROP INDEX public."IDX_3fa354d8d1233ff81097b2fcb6";
       public            postgres    false    252            �           1259    20015    IDX_43a2b24495fe1d9fc2a9c835bc    INDEX     Z   CREATE INDEX "IDX_43a2b24495fe1d9fc2a9c835bc" ON public.line_item USING btree (order_id);
 4   DROP INDEX public."IDX_43a2b24495fe1d9fc2a9c835bc";
       public            postgres    false    252            6           1259    20016    IDX_44090cb11b06174cbcc667e91c    INDEX     q   CREATE INDEX "IDX_44090cb11b06174cbcc667e91c" ON public.custom_shipping_option USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_44090cb11b06174cbcc667e91c";
       public            postgres    false    228            �           1259    20017    IDX_4665f17abc1e81dd58330e5854    INDEX     W   CREATE INDEX "IDX_4665f17abc1e81dd58330e5854" ON public.payment USING btree (cart_id);
 4   DROP INDEX public."IDX_4665f17abc1e81dd58330e5854";
       public            postgres    false    268                       1259    20018    IDX_484c329f4783be4e18e5e2ff09    INDEX     V   CREATE INDEX "IDX_484c329f4783be4e18e5e2ff09" ON public.cart USING btree (region_id);
 4   DROP INDEX public."IDX_484c329f4783be4e18e5e2ff09";
       public            postgres    false    217            S           1259    20019    IDX_4d5f98645a67545d8dea42e2eb    INDEX     {   CREATE INDEX "IDX_4d5f98645a67545d8dea42e2eb" ON public.discount_condition_customer_group USING btree (customer_group_id);
 4   DROP INDEX public."IDX_4d5f98645a67545d8dea42e2eb";
       public            postgres    false    234            m           1259    20020    IDX_4e0739e5f0244c08d41174ca08    INDEX     o   CREATE INDEX "IDX_4e0739e5f0244c08d41174ca08" ON public.discount_rule_products USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_4e0739e5f0244c08d41174ca08";
       public            postgres    false    241                       1259    20021    IDX_4f166bb8c2bfcef2498d97b406    INDEX     a   CREATE INDEX "IDX_4f166bb8c2bfcef2498d97b406" ON public.product_images USING btree (product_id);
 4   DROP INDEX public."IDX_4f166bb8c2bfcef2498d97b406";
       public            postgres    false    280            �           1259    20022    IDX_5077fa54b0d037e984385dfe8a    INDEX     b   CREATE INDEX "IDX_5077fa54b0d037e984385dfe8a" ON public.line_item_tax_line USING btree (item_id);
 4   DROP INDEX public."IDX_5077fa54b0d037e984385dfe8a";
       public            postgres    false    254            g           1259    20023    IDX_5267705a43d547e232535b656c    INDEX     `   CREATE INDEX "IDX_5267705a43d547e232535b656c" ON public.shipping_method USING btree (order_id);
 4   DROP INDEX public."IDX_5267705a43d547e232535b656c";
       public            postgres    false    302                        1259    20024    IDX_52875734e9dd69064f0041f4d9    INDEX     p   CREATE INDEX "IDX_52875734e9dd69064f0041f4d9" ON public.price_list_customer_groups USING btree (price_list_id);
 4   DROP INDEX public."IDX_52875734e9dd69064f0041f4d9";
       public            postgres    false    275            �           1259    20025    IDX_52dd74e8c989aa5665ad2852b8    INDEX     U   CREATE INDEX "IDX_52dd74e8c989aa5665ad2852b8" ON public.swap USING btree (order_id);
 4   DROP INDEX public."IDX_52dd74e8c989aa5665ad2852b8";
       public            postgres    false    311            �           1259    20026    IDX_5371cbaa3be5200f373d24e3d5    INDEX     \   CREATE INDEX "IDX_5371cbaa3be5200f373d24e3d5" ON public.line_item USING btree (variant_id);
 4   DROP INDEX public."IDX_5371cbaa3be5200f373d24e3d5";
       public            postgres    false    252            �           1259    20027    IDX_53cb5605fa42e82b4d47b47bda    INDEX     ]   CREATE UNIQUE INDEX "IDX_53cb5605fa42e82b4d47b47bda" ON public.gift_card USING btree (code);
 4   DROP INDEX public."IDX_53cb5605fa42e82b4d47b47bda";
       public            postgres    false    247            �           1259    20028    IDX_5568d3b9ce9f7abeeb37511ecf    INDEX     b   CREATE INDEX "IDX_5568d3b9ce9f7abeeb37511ecf" ON public."order" USING btree (billing_address_id);
 4   DROP INDEX public."IDX_5568d3b9ce9f7abeeb37511ecf";
       public            postgres    false    262            �           1259    20029    IDX_579e01fb94f4f58db480857e05    INDEX     Z   CREATE INDEX "IDX_579e01fb94f4f58db480857e05" ON public."order" USING btree (display_id);
 4   DROP INDEX public."IDX_579e01fb94f4f58db480857e05";
       public            postgres    false    262                       1259    20030    IDX_5a4d5e1e60f97633547821ec8d    INDEX     h   CREATE INDEX "IDX_5a4d5e1e60f97633547821ec8d" ON public.product_sales_channel USING btree (product_id);
 4   DROP INDEX public."IDX_5a4d5e1e60f97633547821ec8d";
       public            postgres    false    283            %           1259    20031    IDX_5b0c6fc53c574299ecc7f9ee22    INDEX     _   CREATE INDEX "IDX_5b0c6fc53c574299ecc7f9ee22" ON public.product_tags USING btree (product_id);
 4   DROP INDEX public."IDX_5b0c6fc53c574299ecc7f9ee22";
       public            postgres    false    285            q           1259    20032    IDX_5bd11d0e2a9628128e2c26fd0a    INDEX     [   CREATE INDEX "IDX_5bd11d0e2a9628128e2c26fd0a" ON public.draft_order USING btree (cart_id);
 4   DROP INDEX public."IDX_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    242            u           1259    20033    IDX_5c58105f1752fca0f4ce69f466    INDEX     a   CREATE INDEX "IDX_5c58105f1752fca0f4ce69f466" ON public.shipping_option USING btree (region_id);
 4   DROP INDEX public."IDX_5c58105f1752fca0f4ce69f466";
       public            postgres    false    304            G           1259    20034    IDX_620330964db8d2999e67b0dbe3    INDEX     r   CREATE INDEX "IDX_620330964db8d2999e67b0dbe3" ON public.customer_group_customers USING btree (customer_group_id);
 4   DROP INDEX public."IDX_620330964db8d2999e67b0dbe3";
       public            postgres    false    231                        1259    20035    IDX_64980511ca32c8e92b417644af    INDEX     ]   CREATE INDEX "IDX_64980511ca32c8e92b417644af" ON public.claim_item USING btree (variant_id);
 4   DROP INDEX public."IDX_64980511ca32c8e92b417644af";
       public            postgres    false    221                       1259    20036    IDX_6680319ebe1f46d18f106191d5    INDEX     ^   CREATE INDEX "IDX_6680319ebe1f46d18f106191d5" ON public.cart_discounts USING btree (cart_id);
 4   DROP INDEX public."IDX_6680319ebe1f46d18f106191d5";
       public            postgres    false    218            �           1259    20037    IDX_6b0ce4b4bcfd24491510bf19d1    INDEX     `   CREATE UNIQUE INDEX "IDX_6b0ce4b4bcfd24491510bf19d1" ON public.invite USING btree (user_email);
 4   DROP INDEX public."IDX_6b0ce4b4bcfd24491510bf19d1";
       public            postgres    false    251                       1259    20038    IDX_6b9c66b5e36f7c827dfaa092f9    INDEX     _   CREATE INDEX "IDX_6b9c66b5e36f7c827dfaa092f9" ON public.cart USING btree (billing_address_id);
 4   DROP INDEX public."IDX_6b9c66b5e36f7c827dfaa092f9";
       public            postgres    false    217            !           1259    20039    IDX_6e0cad0daef76bb642675910b9    INDEX     Z   CREATE INDEX "IDX_6e0cad0daef76bb642675910b9" ON public.claim_item USING btree (item_id);
 4   DROP INDEX public."IDX_6e0cad0daef76bb642675910b9";
       public            postgres    false    221            c           1259    20040    IDX_6ef23ce0b1d9cf9b5b833e52b9    INDEX     t   CREATE INDEX "IDX_6ef23ce0b1d9cf9b5b833e52b9" ON public.discount_condition_product_type USING btree (condition_id);
 4   DROP INDEX public."IDX_6ef23ce0b1d9cf9b5b833e52b9";
       public            postgres    false    238                       1259    20041    IDX_6f234f058bbbea810dce1d04d0    INDEX     �   CREATE UNIQUE INDEX "IDX_6f234f058bbbea810dce1d04d0" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_6f234f058bbbea810dce1d04d0";
       public            postgres    false    279    279            R           1259    20042    IDX_71773d56eb2bacb922bc328339    INDEX     ]   CREATE INDEX "IDX_71773d56eb2bacb922bc328339" ON public.return USING btree (claim_order_id);
 4   DROP INDEX public."IDX_71773d56eb2bacb922bc328339";
       public            postgres    false    297                       1259    20043    IDX_7234ed737ff4eb1b6ae6e6d7b0    INDEX     g   CREATE INDEX "IDX_7234ed737ff4eb1b6ae6e6d7b0" ON public.product_option_value USING btree (variant_id);
 4   DROP INDEX public."IDX_7234ed737ff4eb1b6ae6e6d7b0";
       public            postgres    false    282                       1259    20044    IDX_80823b7ae866dc5acae2dac6d2    INDEX     Z   CREATE INDEX "IDX_80823b7ae866dc5acae2dac6d2" ON public.product USING btree (profile_id);
 4   DROP INDEX public."IDX_80823b7ae866dc5acae2dac6d2";
       public            postgres    false    276            �           1259    20045    IDX_82a6bbb0b527c20a0002ddcbd6    INDEX     f   CREATE INDEX "IDX_82a6bbb0b527c20a0002ddcbd6" ON public.store_currencies USING btree (currency_code);
 4   DROP INDEX public."IDX_82a6bbb0b527c20a0002ddcbd6";
       public            postgres    false    310            T           1259    20046    IDX_8486ee16e69013c645d0b8716b    INDEX     v   CREATE INDEX "IDX_8486ee16e69013c645d0b8716b" ON public.discount_condition_customer_group USING btree (condition_id);
 4   DROP INDEX public."IDX_8486ee16e69013c645d0b8716b";
       public            postgres    false    234            O           1259    20047    IDX_8aaa78ba90d3802edac317df86    INDEX     j   CREATE INDEX "IDX_8aaa78ba90d3802edac317df86" ON public.region_payment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_8aaa78ba90d3802edac317df86";
       public            postgres    false    296            <           1259    20048    IDX_8abe81b9aac151ae60bf507ad1    INDEX     c   CREATE INDEX "IDX_8abe81b9aac151ae60bf507ad1" ON public.customer USING btree (billing_address_id);
 4   DROP INDEX public."IDX_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    229                       1259    20049    IDX_8df75ef4f35f217768dc113545    INDEX     b   CREATE INDEX "IDX_8df75ef4f35f217768dc113545" ON public.cart_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_8df75ef4f35f217768dc113545";
       public            postgres    false    218            r           1259    20050    IDX_8f6dd6c49202f1466ebf21e77d    INDEX     \   CREATE INDEX "IDX_8f6dd6c49202f1466ebf21e77d" ON public.draft_order USING btree (order_id);
 4   DROP INDEX public."IDX_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    242            "           1259    20051    IDX_900a9c3834257304396b2b0fe7    INDEX     a   CREATE INDEX "IDX_900a9c3834257304396b2b0fe7" ON public.claim_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_900a9c3834257304396b2b0fe7";
       public            postgres    false    221            p           1259    20052    IDX_926ca9f29014af8091722dede0    INDEX     s   CREATE INDEX "IDX_926ca9f29014af8091722dede0" ON public.shipping_method_tax_line USING btree (shipping_method_id);
 4   DROP INDEX public."IDX_926ca9f29014af8091722dede0";
       public            postgres    false    303            7           1259    20053    IDX_93caeb1bb70d37c1d36d6701a7    INDEX     f   CREATE INDEX "IDX_93caeb1bb70d37c1d36d6701a7" ON public.custom_shipping_option USING btree (cart_id);
 4   DROP INDEX public."IDX_93caeb1bb70d37c1d36d6701a7";
       public            postgres    false    228                       1259    20054    IDX_9c9614b2f9d01665800ea8dbff    INDEX     [   CREATE INDEX "IDX_9c9614b2f9d01665800ea8dbff" ON public.address USING btree (customer_id);
 4   DROP INDEX public."IDX_9c9614b2f9d01665800ea8dbff";
       public            postgres    false    214                       1259    20055    IDX_9d1a161434c610aae7c3df2dc7    INDEX     W   CREATE INDEX "IDX_9d1a161434c610aae7c3df2dc7" ON public.cart USING btree (payment_id);
 4   DROP INDEX public."IDX_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    217            [           1259    20056    IDX_a0b05dc4257abe639cb75f8eae    INDEX     �   CREATE INDEX "IDX_a0b05dc4257abe639cb75f8eae" ON public.discount_condition_product_collection USING btree (product_collection_id);
 4   DROP INDEX public."IDX_a0b05dc4257abe639cb75f8eae";
       public            postgres    false    236            v           1259    20057    IDX_a0e206bfaed3cb63c186091734    INDEX     c   CREATE INDEX "IDX_a0e206bfaed3cb63c186091734" ON public.shipping_option USING btree (provider_id);
 4   DROP INDEX public."IDX_a0e206bfaed3cb63c186091734";
       public            postgres    false    304            \           1259    20058    IDX_a1c4f9cfb599ad1f0db39cadd5    INDEX     z   CREATE INDEX "IDX_a1c4f9cfb599ad1f0db39cadd5" ON public.discount_condition_product_collection USING btree (condition_id);
 4   DROP INDEX public."IDX_a1c4f9cfb599ad1f0db39cadd5";
       public            postgres    false    236            g           1259    20059    IDX_a21a7ffbe420d492eb46c305fe    INDEX     b   CREATE INDEX "IDX_a21a7ffbe420d492eb46c305fe" ON public.discount_regions USING btree (region_id);
 4   DROP INDEX public."IDX_a21a7ffbe420d492eb46c305fe";
       public            postgres    false    239            �           1259    20060    IDX_a421bf4588d0004a9b0c0fe84f    INDEX     n   CREATE UNIQUE INDEX "IDX_a421bf4588d0004a9b0c0fe84f" ON public.idempotency_key USING btree (idempotency_key);
 4   DROP INDEX public."IDX_a421bf4588d0004a9b0c0fe84f";
       public            postgres    false    249            z           1259    20061    IDX_a52e234f729db789cf473297a5    INDEX     [   CREATE INDEX "IDX_a52e234f729db789cf473297a5" ON public.fulfillment USING btree (swap_id);
 4   DROP INDEX public."IDX_a52e234f729db789cf473297a5";
       public            postgres    false    244            4           1259    20062    IDX_aa16f61348be02dd07ce3fc54e    INDEX     }   CREATE UNIQUE INDEX "IDX_aa16f61348be02dd07ce3fc54e" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_aa16f61348be02dd07ce3fc54e";
       public            postgres    false    289    289            �           1259    20063    IDX_aac4855eadda71aa1e4b6d7684    INDEX     w   CREATE INDEX "IDX_aac4855eadda71aa1e4b6d7684" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NOT NULL);
 4   DROP INDEX public."IDX_aac4855eadda71aa1e4b6d7684";
       public            postgres    false    268    268            J           1259    20064    IDX_ac2c280de3701b2d66f6817f76    INDEX     X   CREATE INDEX "IDX_ac2c280de3701b2d66f6817f76" ON public.discount USING btree (rule_id);
 4   DROP INDEX public."IDX_ac2c280de3701b2d66f6817f76";
       public            postgres    false    232            0           1259    20065    IDX_b1aac8314662fa6b25569a575b    INDEX     Y   CREATE INDEX "IDX_b1aac8314662fa6b25569a575b" ON public.country USING btree (region_id);
 4   DROP INDEX public."IDX_b1aac8314662fa6b25569a575b";
       public            postgres    false    225            �           1259    20066    IDX_b433e27b7a83e6d12ab26b15b0    INDEX     ^   CREATE INDEX "IDX_b433e27b7a83e6d12ab26b15b0" ON public.money_amount USING btree (region_id);
 4   DROP INDEX public."IDX_b433e27b7a83e6d12ab26b15b0";
       public            postgres    false    257            �           1259    20067    IDX_b4f4b63d1736689b7008980394    INDEX     a   CREATE INDEX "IDX_b4f4b63d1736689b7008980394" ON public.store_currencies USING btree (store_id);
 4   DROP INDEX public."IDX_b4f4b63d1736689b7008980394";
       public            postgres    false    310            5           1259    20068    IDX_b5b6225539ee8501082fbc0714    INDEX     }   CREATE UNIQUE INDEX "IDX_b5b6225539ee8501082fbc0714" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_b5b6225539ee8501082fbc0714";
       public            postgres    false    289    289            �           1259    20069    IDX_b5df0f53a74b9d0c0a2b652c88    INDEX     `   CREATE INDEX "IDX_b5df0f53a74b9d0c0a2b652c88" ON public.notification USING btree (customer_id);
 4   DROP INDEX public."IDX_b5df0f53a74b9d0c0a2b652c88";
       public            postgres    false    259            �           1259    20070    IDX_b6bcf8c3903097b84e85154eed    INDEX     [   CREATE INDEX "IDX_b6bcf8c3903097b84e85154eed" ON public.gift_card USING btree (region_id);
 4   DROP INDEX public."IDX_b6bcf8c3903097b84e85154eed";
       public            postgres    false    247            �           1259    20071    IDX_ba8de19442d86957a3aa3b5006    INDEX     v   CREATE UNIQUE INDEX "IDX_ba8de19442d86957a3aa3b5006" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_ba8de19442d86957a3aa3b5006";
       public            postgres    false    315    315            S           1259    20072    IDX_bad82d7bff2b08b87094bfac3d    INDEX     V   CREATE INDEX "IDX_bad82d7bff2b08b87094bfac3d" ON public.return USING btree (swap_id);
 4   DROP INDEX public."IDX_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    297            n           1259    20073    IDX_be66106a673b88a81c603abe7e    INDEX     i   CREATE INDEX "IDX_be66106a673b88a81c603abe7e" ON public.discount_rule_products USING btree (product_id);
 4   DROP INDEX public."IDX_be66106a673b88a81c603abe7e";
       public            postgres    false    241            �           1259    20074    IDX_be9aea2ccf3567007b6227da4d    INDEX     d   CREATE INDEX "IDX_be9aea2ccf3567007b6227da4d" ON public.line_item_adjustment USING btree (item_id);
 4   DROP INDEX public."IDX_be9aea2ccf3567007b6227da4d";
       public            postgres    false    253            {           1259    20075    IDX_beb35a6de60a6c4f91d5ae57e4    INDEX     _   CREATE INDEX "IDX_beb35a6de60a6c4f91d5ae57e4" ON public.fulfillment USING btree (provider_id);
 4   DROP INDEX public."IDX_beb35a6de60a6c4f91d5ae57e4";
       public            postgres    false    244            �           1259    20076    IDX_bf701b88d2041392a288785ada    INDEX     �   CREATE UNIQUE INDEX "IDX_bf701b88d2041392a288785ada" ON public.line_item_adjustment USING btree (discount_id, item_id) WHERE (discount_id IS NOT NULL);
 4   DROP INDEX public."IDX_bf701b88d2041392a288785ada";
       public            postgres    false    253    253    253            �           1259    20077    IDX_c17aff091441b7c25ec3d68d36    INDEX     W   CREATE INDEX "IDX_c17aff091441b7c25ec3d68d36" ON public.payment USING btree (swap_id);
 4   DROP INDEX public."IDX_c17aff091441b7c25ec3d68d36";
       public            postgres    false    268            %           1259    20078    IDX_c2c0f3edf39515bd15432afe6e    INDEX     _   CREATE INDEX "IDX_c2c0f3edf39515bd15432afe6e" ON public.claim_item_tags USING btree (item_id);
 4   DROP INDEX public."IDX_c2c0f3edf39515bd15432afe6e";
       public            postgres    false    222            �           1259    20079    IDX_c49c061b1a686843c5d673506f    INDEX     e   CREATE UNIQUE INDEX "IDX_c49c061b1a686843c5d673506f" ON public.oauth USING btree (application_name);
 4   DROP INDEX public."IDX_c49c061b1a686843c5d673506f";
       public            postgres    false    261            C           1259    20080    IDX_c4c3a5225a7a1f0af782c40abc    INDEX     }   CREATE UNIQUE INDEX "IDX_c4c3a5225a7a1f0af782c40abc" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_c4c3a5225a7a1f0af782c40abc";
       public            postgres    false    230    230                       1259    20081    IDX_c5516f550433c9b1c2630d787a    INDEX     t   CREATE INDEX "IDX_c5516f550433c9b1c2630d787a" ON public.price_list_customer_groups USING btree (customer_group_id);
 4   DROP INDEX public."IDX_c5516f550433c9b1c2630d787a";
       public            postgres    false    275            K           1259    20082    IDX_c556e14eff4d6f03db593df955    INDEX     n   CREATE INDEX "IDX_c556e14eff4d6f03db593df955" ON public.region_fulfillment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_c556e14eff4d6f03db593df955";
       public            postgres    false    295            W           1259    20083    IDX_c759f53b2e48e8cfb50638fe4e    INDEX     m   CREATE INDEX "IDX_c759f53b2e48e8cfb50638fe4e" ON public.discount_condition_product USING btree (product_id);
 4   DROP INDEX public."IDX_c759f53b2e48e8cfb50638fe4e";
       public            postgres    false    235            w           1259    20084    IDX_c951439af4c98bf2bd7fb8726c    INDEX     b   CREATE INDEX "IDX_c951439af4c98bf2bd7fb8726c" ON public.shipping_option USING btree (profile_id);
 4   DROP INDEX public."IDX_c951439af4c98bf2bd7fb8726c";
       public            postgres    false    304            �           1259    20085    IDX_c99a206eb11ad45f6b7f04f2dc    INDEX     W   CREATE INDEX "IDX_c99a206eb11ad45f6b7f04f2dc" ON public."order" USING btree (cart_id);
 4   DROP INDEX public."IDX_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    262            6           1259    20086    IDX_ca67dd080aac5ecf99609960cd    INDEX     b   CREATE INDEX "IDX_ca67dd080aac5ecf99609960cd" ON public.product_variant USING btree (product_id);
 4   DROP INDEX public."IDX_ca67dd080aac5ecf99609960cd";
       public            postgres    false    289            �           1259    20087    IDX_cd7812c96209c5bdd48a6b858b    INDEX     [   CREATE INDEX "IDX_cd7812c96209c5bdd48a6b858b" ON public."order" USING btree (customer_id);
 4   DROP INDEX public."IDX_cd7812c96209c5bdd48a6b858b";
       public            postgres    false    262                       1259    20088    IDX_cdf4388f294b30a25c627d69fe    INDEX     f   CREATE INDEX "IDX_cdf4388f294b30a25c627d69fe" ON public.product_option_value USING btree (option_id);
 4   DROP INDEX public."IDX_cdf4388f294b30a25c627d69fe";
       public            postgres    false    282                       1259    20089    IDX_ced15a9a695d2b5db9dabce763    INDEX     `   CREATE INDEX "IDX_ced15a9a695d2b5db9dabce763" ON public.cart USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_ced15a9a695d2b5db9dabce763";
       public            postgres    false    217                       1259    20090    IDX_cf9cc6c3f2e6414b992223fff1    INDEX     x   CREATE UNIQUE INDEX "IDX_cf9cc6c3f2e6414b992223fff1" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_cf9cc6c3f2e6414b992223fff1";
       public            postgres    false    276    276            �           1259    20091    IDX_d18ad72f2fb7c87f075825b6f8    INDEX     c   CREATE INDEX "IDX_d18ad72f2fb7c87f075825b6f8" ON public.payment_session USING btree (provider_id);
 4   DROP INDEX public."IDX_d18ad72f2fb7c87f075825b6f8";
       public            postgres    false    273            �           1259    20092    IDX_d25ba0787e1510ddc5d442ebcf    INDEX     _   CREATE INDEX "IDX_d25ba0787e1510ddc5d442ebcf" ON public.payment_session USING btree (cart_id);
 4   DROP INDEX public."IDX_d25ba0787e1510ddc5d442ebcf";
       public            postgres    false    273                       1259    20093    IDX_d38047a90f3d42f0be7909e8ae    INDEX     _   CREATE INDEX "IDX_d38047a90f3d42f0be7909e8ae" ON public.cart_gift_cards USING btree (cart_id);
 4   DROP INDEX public."IDX_d38047a90f3d42f0be7909e8ae";
       public            postgres    false    219            T           1259    20094    IDX_d4bd17f918fc6c332b74a368c3    INDEX     W   CREATE INDEX "IDX_d4bd17f918fc6c332b74a368c3" ON public.return USING btree (order_id);
 4   DROP INDEX public."IDX_d4bd17f918fc6c332b74a368c3";
       public            postgres    false    297            |           1259    20095    IDX_d73e55964e0ff2db8f03807d52    INDEX     b   CREATE INDEX "IDX_d73e55964e0ff2db8f03807d52" ON public.fulfillment USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d73e55964e0ff2db8f03807d52";
       public            postgres    false    244            h           1259    20096    IDX_d783a66d1c91c0858752c933e6    INDEX     f   CREATE INDEX "IDX_d783a66d1c91c0858752c933e6" ON public.shipping_method USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d783a66d1c91c0858752c933e6";
       public            postgres    false    302            �           1259    20097    IDX_d7d441b81012f87d4265fa57d2    INDEX     f   CREATE INDEX "IDX_d7d441b81012f87d4265fa57d2" ON public.gift_card_transaction USING btree (order_id);
 4   DROP INDEX public."IDX_d7d441b81012f87d4265fa57d2";
       public            postgres    false    248            i           1259    20098    IDX_d92993a7d554d84571f4eea1d1    INDEX     _   CREATE INDEX "IDX_d92993a7d554d84571f4eea1d1" ON public.shipping_method USING btree (cart_id);
 4   DROP INDEX public."IDX_d92993a7d554d84571f4eea1d1";
       public            postgres    false    302            &           1259    20099    IDX_dc9bbf9fcb9ba458d25d512811    INDEX     ^   CREATE INDEX "IDX_dc9bbf9fcb9ba458d25d512811" ON public.claim_item_tags USING btree (tag_id);
 4   DROP INDEX public."IDX_dc9bbf9fcb9ba458d25d512811";
       public            postgres    false    222            �           1259    20100    IDX_df1494d263740fcfb1d09a98fc    INDEX     b   CREATE INDEX "IDX_df1494d263740fcfb1d09a98fc" ON public.notification USING btree (resource_type);
 4   DROP INDEX public."IDX_df1494d263740fcfb1d09a98fc";
       public            postgres    false    259            �           1259    20101    IDX_dfc1f02bb0552e79076aa58dbb    INDEX     Z   CREATE INDEX "IDX_dfc1f02bb0552e79076aa58dbb" ON public.gift_card USING btree (order_id);
 4   DROP INDEX public."IDX_dfc1f02bb0552e79076aa58dbb";
       public            postgres    false    247            �           1259    20102    IDX_e1fcce2b18dbcdbe0a5ba9a68b    INDEX     Y   CREATE INDEX "IDX_e1fcce2b18dbcdbe0a5ba9a68b" ON public."order" USING btree (region_id);
 4   DROP INDEX public."IDX_e1fcce2b18dbcdbe0a5ba9a68b";
       public            postgres    false    262            �           1259    20103    IDX_e62ff11e4730bb3adfead979ee    INDEX     a   CREATE INDEX "IDX_e62ff11e4730bb3adfead979ee" ON public.order_gift_cards USING btree (order_id);
 4   DROP INDEX public."IDX_e62ff11e4730bb3adfead979ee";
       public            postgres    false    266            d           1259    20104    IDX_e706deb68f52ab2756119b9e70    INDEX     w   CREATE INDEX "IDX_e706deb68f52ab2756119b9e70" ON public.discount_condition_product_type USING btree (product_type_id);
 4   DROP INDEX public."IDX_e706deb68f52ab2756119b9e70";
       public            postgres    false    238            1           1259    20105    IDX_e78901b1131eaf8203d9b1cb5f    INDEX     \   CREATE UNIQUE INDEX "IDX_e78901b1131eaf8203d9b1cb5f" ON public.country USING btree (iso_2);
 4   DROP INDEX public."IDX_e78901b1131eaf8203d9b1cb5f";
       public            postgres    false    225            �           1259    20106    IDX_e7b488cebe333f449398769b2c    INDEX     `   CREATE INDEX "IDX_e7b488cebe333f449398769b2c" ON public.order_discounts USING btree (order_id);
 4   DROP INDEX public."IDX_e7b488cebe333f449398769b2c";
       public            postgres    false    263            s           1259    20107    IDX_e87cc617a22ef4edce5601edab    INDEX     ^   CREATE INDEX "IDX_e87cc617a22ef4edce5601edab" ON public.draft_order USING btree (display_id);
 4   DROP INDEX public."IDX_e87cc617a22ef4edce5601edab";
       public            postgres    false    242            �           1259    20108    IDX_ea6a358d9ce41c16499aae55f9    INDEX     `   CREATE INDEX "IDX_ea6a358d9ce41c16499aae55f9" ON public.notification USING btree (resource_id);
 4   DROP INDEX public."IDX_ea6a358d9ce41c16499aae55f9";
       public            postgres    false    259            �           1259    20109    IDX_ea94f42b6c88e9191c3649d752    INDEX     [   CREATE INDEX "IDX_ea94f42b6c88e9191c3649d752" ON public.payment USING btree (provider_id);
 4   DROP INDEX public."IDX_ea94f42b6c88e9191c3649d752";
       public            postgres    false    268            -           1259    20110    IDX_ec10c54769877840c132260e4a    INDEX     W   CREATE INDEX "IDX_ec10c54769877840c132260e4a" ON public.claim_tag USING btree (value);
 4   DROP INDEX public."IDX_ec10c54769877840c132260e4a";
       public            postgres    false    224            /           1259    20111    IDX_ece65a774192b34253abc4cd67    INDEX     e   CREATE INDEX "IDX_ece65a774192b34253abc4cd67" ON public.product_type_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_ece65a774192b34253abc4cd67";
       public            postgres    false    288            C           1259    20112    IDX_eec9d9af4ca098e19ea6b499ea    INDEX     W   CREATE INDEX "IDX_eec9d9af4ca098e19ea6b499ea" ON public.refund USING btree (order_id);
 4   DROP INDEX public."IDX_eec9d9af4ca098e19ea6b499ea";
       public            postgres    false    293            N           1259    20113    IDX_efff700651718e452ca9580a62    INDEX     k   CREATE INDEX "IDX_efff700651718e452ca9580a62" ON public.discount_condition USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_efff700651718e452ca9580a62";
       public            postgres    false    233            X           1259    20114    IDX_f05132301e95bdab4ba1cf29a2    INDEX     o   CREATE INDEX "IDX_f05132301e95bdab4ba1cf29a2" ON public.discount_condition_product USING btree (condition_id);
 4   DROP INDEX public."IDX_f05132301e95bdab4ba1cf29a2";
       public            postgres    false    235            }           1259    20115    IDX_f129acc85e346a10eed12b86fc    INDEX     \   CREATE INDEX "IDX_f129acc85e346a10eed12b86fc" ON public.fulfillment USING btree (order_id);
 4   DROP INDEX public."IDX_f129acc85e346a10eed12b86fc";
       public            postgres    false    244            �           1259    20116    IDX_f2bb9f71e95b315eb24b2b84cb    INDEX     e   CREATE INDEX "IDX_f2bb9f71e95b315eb24b2b84cb" ON public.order_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_f2bb9f71e95b315eb24b2b84cb";
       public            postgres    false    266            h           1259    20117    IDX_f4194aa81073f3fab8aa86906f    INDEX     d   CREATE INDEX "IDX_f4194aa81073f3fab8aa86906f" ON public.discount_regions USING btree (discount_id);
 4   DROP INDEX public."IDX_f4194aa81073f3fab8aa86906f";
       public            postgres    false    239            *           1259    20118    IDX_f49e3974465d3c3a33d449d3f3    INDEX     \   CREATE INDEX "IDX_f49e3974465d3c3a33d449d3f3" ON public.claim_order USING btree (order_id);
 4   DROP INDEX public."IDX_f49e3974465d3c3a33d449d3f3";
       public            postgres    false    223            �           1259    20119    IDX_f5221735ace059250daac9d980    INDEX     X   CREATE INDEX "IDX_f5221735ace059250daac9d980" ON public.payment USING btree (order_id);
 4   DROP INDEX public."IDX_f5221735ace059250daac9d980";
       public            postgres    false    268            K           1259    20120    IDX_f65bf52e2239ace276ece2b2f4    INDEX     w   CREATE UNIQUE INDEX "IDX_f65bf52e2239ace276ece2b2f4" ON public.discount USING btree (code) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_f65bf52e2239ace276ece2b2f4";
       public            postgres    false    232    232            �           1259    20121    IDX_f672727ab020df6c50fb64c1a7    INDEX     l   CREATE INDEX "IDX_f672727ab020df6c50fb64c1a7" ON public.shipping_tax_rate USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_f672727ab020df6c50fb64c1a7";
       public            postgres    false    307            �           1259    20122    IDX_f74980b411cf94af523a72af7d    INDEX     Z   CREATE INDEX "IDX_f74980b411cf94af523a72af7d" ON public.note USING btree (resource_type);
 4   DROP INDEX public."IDX_f74980b411cf94af523a72af7d";
       public            postgres    false    258            j           1259    20123    IDX_fb94fa8d5ca940daa2a58139f8    INDEX     _   CREATE INDEX "IDX_fb94fa8d5ca940daa2a58139f8" ON public.shipping_method USING btree (swap_id);
 4   DROP INDEX public."IDX_fb94fa8d5ca940daa2a58139f8";
       public            postgres    false    302            `           1259    20124    IDX_fbb2499551ed074526f3ee3624    INDEX     s   CREATE INDEX "IDX_fbb2499551ed074526f3ee3624" ON public.discount_condition_product_tag USING btree (condition_id);
 4   DROP INDEX public."IDX_fbb2499551ed074526f3ee3624";
       public            postgres    false    237            k           1259    20125    IDX_fc963e94854bff2714ca84cd19    INDEX     j   CREATE INDEX "IDX_fc963e94854bff2714ca84cd19" ON public.shipping_method USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_fc963e94854bff2714ca84cd19";
       public            postgres    false    302            �           1259    20126    IDX_money_amount_currency_code    INDEX     b   CREATE INDEX "IDX_money_amount_currency_code" ON public.money_amount USING btree (currency_code);
 4   DROP INDEX public."IDX_money_amount_currency_code";
       public            postgres    false    257            �           1259    20127    IDX_order_currency_code    INDEX     V   CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code);
 -   DROP INDEX public."IDX_order_currency_code";
       public            postgres    false    262            �           1259    20128    IDX_order_edit_order_id    INDEX     T   CREATE INDEX "IDX_order_edit_order_id" ON public.order_edit USING btree (order_id);
 -   DROP INDEX public."IDX_order_edit_order_id";
       public            postgres    false    265            �           1259    20129 $   IDX_order_edit_payment_collection_id    INDEX     n   CREATE INDEX "IDX_order_edit_payment_collection_id" ON public.order_edit USING btree (payment_collection_id);
 :   DROP INDEX public."IDX_order_edit_payment_collection_id";
       public            postgres    false    265            �           1259    20130 $   IDX_payment_collection_currency_code    INDEX     �   CREATE INDEX "IDX_payment_collection_currency_code" ON public.payment_collection USING btree (currency_code) WHERE (deleted_at IS NULL);
 :   DROP INDEX public."IDX_payment_collection_currency_code";
       public            postgres    false    269    269            �           1259    20131 5   IDX_payment_collection_payments_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_payments_payment_collection_id" ON public.payment_collection_payments USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_payments_payment_collection_id";
       public            postgres    false    270            �           1259    20132 *   IDX_payment_collection_payments_payment_id    INDEX     z   CREATE INDEX "IDX_payment_collection_payments_payment_id" ON public.payment_collection_payments USING btree (payment_id);
 @   DROP INDEX public."IDX_payment_collection_payments_payment_id";
       public            postgres    false    270            �           1259    20133     IDX_payment_collection_region_id    INDEX     �   CREATE INDEX "IDX_payment_collection_region_id" ON public.payment_collection USING btree (region_id) WHERE (deleted_at IS NULL);
 6   DROP INDEX public."IDX_payment_collection_region_id";
       public            postgres    false    269    269            �           1259    20134 5   IDX_payment_collection_sessions_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_collection_id" ON public.payment_collection_sessions USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_sessions_payment_collection_id";
       public            postgres    false    271            �           1259    20135 2   IDX_payment_collection_sessions_payment_session_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_session_id" ON public.payment_collection_sessions USING btree (payment_session_id);
 H   DROP INDEX public."IDX_payment_collection_sessions_payment_session_id";
       public            postgres    false    271            �           1259    20136    IDX_payment_currency_code    INDEX     X   CREATE INDEX "IDX_payment_currency_code" ON public.payment USING btree (currency_code);
 /   DROP INDEX public."IDX_payment_currency_code";
       public            postgres    false    268                       1259    20137    IDX_pcp_product_category_id    INDEX     q   CREATE INDEX "IDX_pcp_product_category_id" ON public.product_category_product USING btree (product_category_id);
 1   DROP INDEX public."IDX_pcp_product_category_id";
       public            postgres    false    278                       1259    20138    IDX_pcp_product_id    INDEX     _   CREATE INDEX "IDX_pcp_product_id" ON public.product_category_product USING btree (product_id);
 (   DROP INDEX public."IDX_pcp_product_id";
       public            postgres    false    278                       1259    20139 "   IDX_product_category_active_public    INDEX     �   CREATE INDEX "IDX_product_category_active_public" ON public.product_category USING btree (parent_category_id, is_active, is_internal) WHERE ((is_active IS TRUE) AND (is_internal IS FALSE));
 8   DROP INDEX public."IDX_product_category_active_public";
       public            postgres    false    277    277    277    277    277            	           1259    20140    IDX_product_category_handle    INDEX     c   CREATE UNIQUE INDEX "IDX_product_category_handle" ON public.product_category USING btree (handle);
 1   DROP INDEX public."IDX_product_category_handle";
       public            postgres    false    277            
           1259    20141    IDX_product_category_path    INDEX     Y   CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath);
 /   DROP INDEX public."IDX_product_category_path";
       public            postgres    false    277            9           1259    20142 4   IDX_product_variant_inventory_item_inventory_item_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_inventory_item_id" ON public.product_variant_inventory_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);
 J   DROP INDEX public."IDX_product_variant_inventory_item_inventory_item_id";
       public            postgres    false    290    290            :           1259    20143 -   IDX_product_variant_inventory_item_variant_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_variant_id" ON public.product_variant_inventory_item USING btree (variant_id) WHERE (deleted_at IS NULL);
 C   DROP INDEX public."IDX_product_variant_inventory_item_variant_id";
       public            postgres    false    290    290            D           1259    20144    IDX_refund_payment_id    INDEX     P   CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id);
 +   DROP INDEX public."IDX_refund_payment_id";
       public            postgres    false    293            G           1259    20145    IDX_region_currency_code    INDEX     V   CREATE INDEX "IDX_region_currency_code" ON public.region USING btree (currency_code);
 .   DROP INDEX public."IDX_region_currency_code";
       public            postgres    false    294            b           1259    20146 &   IDX_sales_channel_location_location_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_location_id" ON public.sales_channel_location USING btree (location_id) WHERE (deleted_at IS NULL);
 <   DROP INDEX public."IDX_sales_channel_location_location_id";
       public            postgres    false    301    301            c           1259    20147 +   IDX_sales_channel_location_sales_channel_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_sales_channel_id" ON public.sales_channel_location USING btree (sales_channel_id) WHERE (deleted_at IS NULL);
 A   DROP INDEX public."IDX_sales_channel_location_sales_channel_id";
       public            postgres    false    301    301                       1259    20148 '   IDX_upcp_product_id_product_category_id    INDEX     �   CREATE UNIQUE INDEX "IDX_upcp_product_id_product_category_id" ON public.product_category_product USING btree (product_category_id, product_id);
 =   DROP INDEX public."IDX_upcp_product_id_product_category_id";
       public            postgres    false    278    278            �           1259    20149 "   UniqPaymentSessionCartIdProviderId    INDEX     �   CREATE UNIQUE INDEX "UniqPaymentSessionCartIdProviderId" ON public.payment_session USING btree (cart_id, provider_id) WHERE (cart_id IS NOT NULL);
 8   DROP INDEX public."UniqPaymentSessionCartIdProviderId";
       public            postgres    false    273    273    273                       1259    20150    UniqProductCategoryParentIdRank    INDEX     y   CREATE UNIQUE INDEX "UniqProductCategoryParentIdRank" ON public.product_category USING btree (parent_category_id, rank);
 5   DROP INDEX public."UniqProductCategoryParentIdRank";
       public            postgres    false    277    277            �           1259    20151    UniquePaymentActive    INDEX     o   CREATE UNIQUE INDEX "UniquePaymentActive" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NULL);
 )   DROP INDEX public."UniquePaymentActive";
       public            postgres    false    268    268            �           1259    20152 (   unique_li_original_item_id_order_edit_id    INDEX     �   CREATE UNIQUE INDEX unique_li_original_item_id_order_edit_id ON public.line_item USING btree (order_edit_id, original_item_id) WHERE ((original_item_id IS NOT NULL) AND (order_edit_id IS NOT NULL));
 <   DROP INDEX public.unique_li_original_item_id_order_edit_id;
       public            postgres    false    252    252    252    252            -           2606    20153 :   shipping_option_requirement FK_012a62ba743e427b5ebe9dee18e    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e";
       public          postgres    false    4217    304    305            �           2606    20158 =   discount_condition_product_tag FK_01486cc9dc6b36bf658685535f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_01486cc9dc6b36bf658685535f6" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_01486cc9dc6b36bf658685535f6";
       public          postgres    false    4131    284    237            �           2606    20163 *   claim_order FK_017d58bf8260c6e1a2588d258e2    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2";
       public          postgres    false    3846    214    223            �           2606    20168 +   notification FK_0425c2423e2ce9fdfd5c23761d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9" FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9";
       public          postgres    false    4025    260    259            �           2606    20173 .   cart_gift_cards FK_0fb38b6d167793192bc126d835e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_0fb38b6d167793192bc126d835e" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_0fb38b6d167793192bc126d835e";
       public          postgres    false    219    3976    247            �           2606    20178 .   order_discounts FK_0fc1ec4e3db9001ad60c19daf16    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16";
       public          postgres    false    263    3917    232            �           2606    20183 (   line_item FK_118e3c48f09a7728f41023c94ef    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_118e3c48f09a7728f41023c94ef" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_118e3c48f09a7728f41023c94ef";
       public          postgres    false    3884    252    223            �           2606    20188 +   money_amount FK_17a06d728e4cfbc5bd2ddb70af0    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_17a06d728e4cfbc5bd2ddb70af0" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_17a06d728e4cfbc5bd2ddb70af0";
       public          postgres    false    289    4152    257            �           2606    20193 $   order FK_19b0c6293443d1b464f604c3316    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_19b0c6293443d1b464f604c3316" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_19b0c6293443d1b464f604c3316";
       public          postgres    false    3846    214    262                       2606    20198 /   product_tax_rate FK_1d04aebeabb6a89f87e536a124d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d";
       public          postgres    false    276    286    4103            #           2606    20203 .   shipping_method FK_1d9ad62038998c3a85c77a53cfb    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb" FOREIGN KEY (return_id) REFERENCES public.return(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb";
       public          postgres    false    4182    297    302            �           2606    20208 )   order_edit FK_1f3a251488a91510f57e1bf93cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd";
       public          postgres    false    265    4037    262                       2606    20213 +   product_tags FK_21683a063fe82dafdf681ecc9c4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4";
       public          postgres    false    285    4131    284            �           2606    20218 *   claim_image FK_21cbfedd83d736d86f4c6f4ce56    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56" FOREIGN KEY (claim_item_id) REFERENCES public.claim_item(id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56";
       public          postgres    false    220    3876    221                       2606    20223 -   product_images FK_2212515ba306c79f42c46a99db7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_2212515ba306c79f42c46a99db7" FOREIGN KEY (image_id) REFERENCES public.image(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_2212515ba306c79f42c46a99db7";
       public          postgres    false    250    280    3986            "           2606    20228 ,   return_reason FK_2250c5d9e975987ab212f61a657    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a657" FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a657";
       public          postgres    false    4191    299    299            �           2606    20233 '   discount FK_2250c5d9e975987ab212f61a663    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a663" FOREIGN KEY (parent_discount_id) REFERENCES public.discount(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a663";
       public          postgres    false    232    232    3917            �           2606    20238 #   cart FK_242205c81c1152fab1b6e848470    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_242205c81c1152fab1b6e848470" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_242205c81c1152fab1b6e848470";
       public          postgres    false    229    3902    217                       2606    20243 /   product_tax_rate FK_2484cf14c437a04586b07e7dddb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_2484cf14c437a04586b07e7dddb" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_2484cf14c437a04586b07e7dddb";
       public          postgres    false    286    313    4245                       2606    20248 4   product_type_tax_rate FK_25a3138bb236f63d9bb6c8ff111    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111";
       public          postgres    false    4141    287    288            �           2606    20253 (   line_item FK_27283ee631862266d0f1c680646    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_27283ee631862266d0f1c680646" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_27283ee631862266d0f1c680646";
       public          postgres    false    252    217    3858            �           2606    20258 3   line_item_adjustment FK_2f41b20a71f30e60471d7e3769c    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c" FOREIGN KEY (discount_id) REFERENCES public.discount(id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c";
       public          postgres    false    253    3917    232            .           2606    20263 0   shipping_tax_rate FK_346e0016cf045b9980747747645    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_346e0016cf045b9980747747645" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_346e0016cf045b9980747747645";
       public          postgres    false    307    4245    313            �           2606    20268 +   notification FK_371db513192c083f48ba63c33be    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_371db513192c083f48ba63c33be" FOREIGN KEY (parent_id) REFERENCES public.notification(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_371db513192c083f48ba63c33be";
       public          postgres    false    259    4023    259                       2606    20273 4   product_sales_channel FK_37341bad297fe5cca91f921032b    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "FK_37341bad297fe5cca91f921032b" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "FK_37341bad297fe5cca91f921032b";
       public          postgres    false    283    4193    300                       2606    20278 ;   region_fulfillment_providers FK_37f361c38a18d12a3fa3158d0cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf";
       public          postgres    false    295    3971    246                       2606    20283 7   region_payment_providers FK_3a6947180aeec283cd92c59ebb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0" FOREIGN KEY (provider_id) REFERENCES public.payment_provider(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0";
       public          postgres    false    296    4086    272                       2606    20288 %   region FK_3bdd5896ec93be2f1c62a3309a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5";
       public          postgres    false    294    3893    227            �           2606    20293 7   customer_group_customers FK_3c6412d076292f439269abe1a23    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_3c6412d076292f439269abe1a23" FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_3c6412d076292f439269abe1a23";
       public          postgres    false    231    3902    229            �           2606    20298 (   line_item FK_3fa354d8d1233ff81097b2fcb6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b";
       public          postgres    false    252    4239    311            �           2606    20303 4   gift_card_transaction FK_3ff5597f1d7e02bba41541846f4    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4";
       public          postgres    false    248    3976    247            4           2606    20308 #   swap FK_402e8182bc553e082f6380020b4    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_402e8182bc553e082f6380020b4" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_402e8182bc553e082f6380020b4";
       public          postgres    false    311    3858    217            �           2606    20313 (   line_item FK_43a2b24495fe1d9fc2a9c835bc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7";
       public          postgres    false    252    4037    262            �           2606    20318 5   custom_shipping_option FK_44090cb11b06174cbcc667e91ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_44090cb11b06174cbcc667e91ca" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_44090cb11b06174cbcc667e91ca";
       public          postgres    false    228    4217    304            �           2606    20323 0   order_item_change FK_44feeebb258bf4cfa4cc4202281    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281" FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281";
       public          postgres    false    267    4049    265            �           2606    20328 &   payment FK_4665f17abc1e81dd58330e58542    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_4665f17abc1e81dd58330e58542" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_4665f17abc1e81dd58330e58542";
       public          postgres    false    268    3858    217            8           2606    20333 ,   tracking_link FK_471e9e4c96e02ba209a307db32b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "FK_471e9e4c96e02ba209a307db32b" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "FK_471e9e4c96e02ba209a307db32b";
       public          postgres    false    314    3967    244            �           2606    20338 #   cart FK_484c329f4783be4e18e5e2ff090    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_484c329f4783be4e18e5e2ff090" FOREIGN KEY (region_id) REFERENCES public.region(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_484c329f4783be4e18e5e2ff090";
       public          postgres    false    217    4169    294                       2606    20343 &   product FK_49d419fc77d3aed46c835c558ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_49d419fc77d3aed46c835c558ac" FOREIGN KEY (collection_id) REFERENCES public.product_collection(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_49d419fc77d3aed46c835c558ac";
       public          postgres    false    276    4115    279            �           2606    20348 @   discount_condition_customer_group FK_4d5f98645a67545d8dea42e2eb8    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8";
       public          postgres    false    234    3909    230            �           2606    20353 5   discount_rule_products FK_4e0739e5f0244c08d41174ca08a    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a";
       public          postgres    false    241    240    3948                       2606    20358 -   product_images FK_4f166bb8c2bfcef2498d97b4068    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068";
       public          postgres    false    280    276    4103            �           2606    20363 1   line_item_tax_line FK_5077fa54b0d037e984385dfe8ad    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad";
       public          postgres    false    254    252    3996            $           2606    20368 .   shipping_method FK_5267705a43d547e232535b656c2    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_5267705a43d547e232535b656c2" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_5267705a43d547e232535b656c2";
       public          postgres    false    302    4037    262            �           2606    20373 9   price_list_customer_groups FK_52875734e9dd69064f0041f4d92    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_52875734e9dd69064f0041f4d92" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_52875734e9dd69064f0041f4d92";
       public          postgres    false    275    4095    274            5           2606    20378 #   swap FK_52dd74e8c989aa5665ad2852b8b    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b";
       public          postgres    false    311    262    4037            �           2606    20383 (   line_item FK_5371cbaa3be5200f373d24e3d5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b";
       public          postgres    false    289    4152    252            �           2606    20388 $   order FK_5568d3b9ce9f7abeeb37511ecf2    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2";
       public          postgres    false    3846    262    214            0           2606    20393 $   store FK_55beebaa09e947cccca554af222    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_55beebaa09e947cccca554af222" FOREIGN KEY (default_currency_code) REFERENCES public.currency(code);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_55beebaa09e947cccca554af222";
       public          postgres    false    227    3893    309                       2606    20398 4   product_sales_channel FK_5a4d5e1e60f97633547821ec8d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "FK_5a4d5e1e60f97633547821ec8d6" FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "FK_5a4d5e1e60f97633547821ec8d6";
       public          postgres    false    276    4103    283                       2606    20403 +   product_tags FK_5b0c6fc53c574299ecc7f9ee22e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e";
       public          postgres    false    4103    276    285            �           2606    20408 *   draft_order FK_5bd11d0e2a9628128e2c26fd0a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6";
       public          postgres    false    3858    217    242            *           2606    20413 .   shipping_option FK_5c58105f1752fca0f4ce69f4663    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663" FOREIGN KEY (region_id) REFERENCES public.region(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663";
       public          postgres    false    294    304    4169            �           2606    20418 0   order_item_change FK_5f9688929761f7df108b630e64a    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_5f9688929761f7df108b630e64a" FOREIGN KEY (line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_5f9688929761f7df108b630e64a";
       public          postgres    false    3996    267    252            1           2606    20423 $   store FK_61b0f48cccbb5f41c750bac7286    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286" FOREIGN KEY (default_sales_channel_id) REFERENCES public.sales_channel(id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286";
       public          postgres    false    4193    300    309            �           2606    20428 7   customer_group_customers FK_620330964db8d2999e67b0dbe3e    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_620330964db8d2999e67b0dbe3e" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_620330964db8d2999e67b0dbe3e";
       public          postgres    false    3909    231    230            �           2606    20433 )   claim_item FK_64980511ca32c8e92b417644afa    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_64980511ca32c8e92b417644afa" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_64980511ca32c8e92b417644afa";
       public          postgres    false    4152    221    289            �           2606    20438 -   cart_discounts FK_6680319ebe1f46d18f106191d59    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_6680319ebe1f46d18f106191d59" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_6680319ebe1f46d18f106191d59";
       public          postgres    false    3858    217    218            �           2606    20443 #   cart FK_6b9c66b5e36f7c827dfaa092f94    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94";
       public          postgres    false    217    214    3846            �           2606    20448 &   address FK_6df8c6bf969a51d24c1980c4ff4    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4" FOREIGN KEY (country_code) REFERENCES public.country(iso_2);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4";
       public          postgres    false    3889    225    214            �           2606    20453 )   claim_item FK_6e0cad0daef76bb642675910b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_6e0cad0daef76bb642675910b9d" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_6e0cad0daef76bb642675910b9d";
       public          postgres    false    221    3996    252            �           2606    20458 >   discount_condition_product_type FK_6ef23ce0b1d9cf9b5b833e52b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d";
       public          postgres    false    233    3920    238            �           2606    20463 $   order FK_6ff7e874f01b478c115fdd462eb    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb";
       public          postgres    false    4193    300    262                       2606    20468 %   return FK_71773d56eb2bacb922bc3283398    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_71773d56eb2bacb922bc3283398" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_71773d56eb2bacb922bc3283398";
       public          postgres    false    3884    297    223            �           2606    20473 $   order FK_717a141f96b76d794d409f38129    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_717a141f96b76d794d409f38129" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_717a141f96b76d794d409f38129";
       public          postgres    false    227    3893    262            	           2606    20478 3   product_option_value FK_7234ed737ff4eb1b6ae6e6d7b01    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01";
       public          postgres    false    289    282    4152            �           2606    20483 $   order FK_727b872f86c7378474a8fa46147    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_727b872f86c7378474a8fa46147" FOREIGN KEY (draft_order_id) REFERENCES public.draft_order(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_727b872f86c7378474a8fa46147";
       public          postgres    false    262    3957    242                       2606    20488 *   return_item FK_7edab75b4fc88ea6d4f2574f087    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087" FOREIGN KEY (return_id) REFERENCES public.return(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087";
       public          postgres    false    297    4182    298                       2606    20493 &   product FK_80823b7ae866dc5acae2dac6d2c    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_80823b7ae866dc5acae2dac6d2c" FOREIGN KEY (profile_id) REFERENCES public.shipping_profile(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_80823b7ae866dc5acae2dac6d2c";
       public          postgres    false    4222    306    276            2           2606    20498 /   store_currencies FK_82a6bbb0b527c20a0002ddcbd60    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60" FOREIGN KEY (currency_code) REFERENCES public.currency(code) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60";
       public          postgres    false    227    3893    310            �           2606    20503 @   discount_condition_customer_group FK_8486ee16e69013c645d0b8716b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_8486ee16e69013c645d0b8716b6" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_8486ee16e69013c645d0b8716b6";
       public          postgres    false    3920    234    233                        2606    20508 *   return_item FK_87774591f44564effd8039d7162    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_87774591f44564effd8039d7162" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_87774591f44564effd8039d7162";
       public          postgres    false    298    252    3996                       2606    20513 7   region_payment_providers FK_8aaa78ba90d3802edac317df869    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_8aaa78ba90d3802edac317df869" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_8aaa78ba90d3802edac317df869";
       public          postgres    false    4169    296    294            �           2606    20518 '   customer FK_8abe81b9aac151ae60bf507ad15    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15";
       public          postgres    false    214    229    3846            �           2606    20523 -   cart_discounts FK_8df75ef4f35f217768dc1135458    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_8df75ef4f35f217768dc1135458" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_8df75ef4f35f217768dc1135458";
       public          postgres    false    3917    218    232            �           2606    20528 *   draft_order FK_8f6dd6c49202f1466ebf21e77da    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da";
       public          postgres    false    4037    242    262            �           2606    20533 )   claim_item FK_900a9c3834257304396b2b0fe7c    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_900a9c3834257304396b2b0fe7c" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_900a9c3834257304396b2b0fe7c";
       public          postgres    false    221    223    3884                       2606    20538 %   region FK_91f88052197680f9790272aaf5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_91f88052197680f9790272aaf5b" FOREIGN KEY (tax_provider_id) REFERENCES public.tax_provider(id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_91f88052197680f9790272aaf5b";
       public          postgres    false    4243    312    294            )           2606    20543 7   shipping_method_tax_line FK_926ca9f29014af8091722dede08    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "FK_926ca9f29014af8091722dede08" FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "FK_926ca9f29014af8091722dede08";
       public          postgres    false    303    302    4205            �           2606    20548 5   custom_shipping_option FK_93caeb1bb70d37c1d36d6701a7a    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a";
       public          postgres    false    217    228    3858            �           2606    20553 &   address FK_9c9614b2f9d01665800ea8dbff7    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7";
       public          postgres    false    229    3902    214            �           2606    20558 #   cart FK_9d1a161434c610aae7c3df2dc7e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e";
       public          postgres    false    217    4069    268            �           2606    20563 /   fulfillment_item FK_a033f83cc6bd7701a5687ab4b38    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38";
       public          postgres    false    3967    244    245            �           2606    20568 D   discount_condition_product_collection FK_a0b05dc4257abe639cb75f8eae2    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2" FOREIGN KEY (product_collection_id) REFERENCES public.product_collection(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2";
       public          postgres    false    4115    279    236            +           2606    20573 .   shipping_option FK_a0e206bfaed3cb63c1860917347    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_a0e206bfaed3cb63c1860917347" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_a0e206bfaed3cb63c1860917347";
       public          postgres    false    304    246    3971            �           2606    20578 D   discount_condition_product_collection FK_a1c4f9cfb599ad1f0db39cadd5f    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f";
       public          postgres    false    233    3920    236            �           2606    20583 /   discount_regions FK_a21a7ffbe420d492eb46c305fec    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec";
       public          postgres    false    239    294    4169            �           2606    20588 #   cart FK_a2bd3c26f42e754b9249ba78fd6    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6";
       public          postgres    false    300    217    4193            �           2606    20593 *   fulfillment FK_a52e234f729db789cf473297a5c    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_a52e234f729db789cf473297a5c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_a52e234f729db789cf473297a5c";
       public          postgres    false    311    4239    244            �           2606    20598 '   discount FK_ac2c280de3701b2d66f6817f760    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_ac2c280de3701b2d66f6817f760" FOREIGN KEY (rule_id) REFERENCES public.discount_rule(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_ac2c280de3701b2d66f6817f760";
       public          postgres    false    232    3948    240            �           2606    20603 &   country FK_b1aac8314662fa6b25569a575bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_b1aac8314662fa6b25569a575bb" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "FK_b1aac8314662fa6b25569a575bb";
       public          postgres    false    225    4169    294            �           2606    20608 +   money_amount FK_b433e27b7a83e6d12ab26b15b03    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03" FOREIGN KEY (region_id) REFERENCES public.region(id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03";
       public          postgres    false    257    4169    294            �           2606    20613 0   order_item_change FK_b4d53b8d03c9f5e7d4317e818d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9" FOREIGN KEY (original_line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9";
       public          postgres    false    267    3996    252            3           2606    20618 /   store_currencies FK_b4f4b63d1736689b7008980394c    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_b4f4b63d1736689b7008980394c" FOREIGN KEY (store_id) REFERENCES public.store(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_b4f4b63d1736689b7008980394c";
       public          postgres    false    310    4230    309            �           2606    20623 +   notification FK_b5df0f53a74b9d0c0a2b652c88d    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d";
       public          postgres    false    259    3902    229            �           2606    20628 (   gift_card FK_b6bcf8c3903097b84e85154eed3    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3" FOREIGN KEY (region_id) REFERENCES public.region(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3";
       public          postgres    false    247    4169    294            7           2606    20633 '   tax_rate FK_b95a1e03b051993d208366cb960    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_b95a1e03b051993d208366cb960" FOREIGN KEY (region_id) REFERENCES public.region(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_b95a1e03b051993d208366cb960";
       public          postgres    false    313    4169    294                       2606    20638 %   return FK_bad82d7bff2b08b87094bfac3d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6";
       public          postgres    false    297    4239    311            �           2606    20643 5   discount_rule_products FK_be66106a673b88a81c603abe7eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_be66106a673b88a81c603abe7eb" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_be66106a673b88a81c603abe7eb";
       public          postgres    false    241    4103    276            �           2606    20648 3   line_item_adjustment FK_be9aea2ccf3567007b6227da4d2    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2";
       public          postgres    false    253    252    3996            �           2606    20653 *   fulfillment FK_beb35a6de60a6c4f91d5ae57e44    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44";
       public          postgres    false    3971    246    244            �           2606    20658 &   payment FK_c17aff091441b7c25ec3d68d36c    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c";
       public          postgres    false    4239    311    268            �           2606    20663 .   claim_item_tags FK_c2c0f3edf39515bd15432afe6e5    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5" FOREIGN KEY (item_id) REFERENCES public.claim_item(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5";
       public          postgres    false    221    222    3876                        2606    20668 9   price_list_customer_groups FK_c5516f550433c9b1c2630d787a7    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_c5516f550433c9b1c2630d787a7" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_c5516f550433c9b1c2630d787a7";
       public          postgres    false    3909    275    230                       2606    20673 ;   region_fulfillment_providers FK_c556e14eff4d6f03db593df955e    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_c556e14eff4d6f03db593df955e" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_c556e14eff4d6f03db593df955e";
       public          postgres    false    295    4169    294            �           2606    20678 9   discount_condition_product FK_c759f53b2e48e8cfb50638fe4e0    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0";
       public          postgres    false    235    4103    276            ,           2606    20683 .   shipping_option FK_c951439af4c98bf2bd7fb8726cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd" FOREIGN KEY (profile_id) REFERENCES public.shipping_profile(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd";
       public          postgres    false    304    4222    306            �           2606    20688 $   order FK_c99a206eb11ad45f6b7f04f2dcc    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc";
       public          postgres    false    217    3858    262                       2606    20693 .   product_variant FK_ca67dd080aac5ecf99609960cd2    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2";
       public          postgres    false    4103    289    276            �           2606    20698 $   order FK_cd7812c96209c5bdd48a6b858b0    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0";
       public          postgres    false    262    3902    229            
           2606    20703 3   product_option_value FK_cdf4388f294b30a25c627d69fe9    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9" FOREIGN KEY (option_id) REFERENCES public.product_option(id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9";
       public          postgres    false    282    4121    281            �           2606    20708 #   cart FK_ced15a9a695d2b5db9dabce763d    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d";
       public          postgres    false    217    3846    214            �           2606    20713 .   payment_session FK_d25ba0787e1510ddc5d442ebcfa    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa";
       public          postgres    false    273    3858    217            �           2606    20718 .   cart_gift_cards FK_d38047a90f3d42f0be7909e8aea    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea";
       public          postgres    false    219    3858    217                       2606    20723 %   return FK_d4bd17f918fc6c332b74a368c36    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36";
       public          postgres    false    4037    297    262            �           2606    20728 *   fulfillment FK_d73e55964e0ff2db8f03807d52e    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e";
       public          postgres    false    223    244    3884            !           2606    20733 *   return_item FK_d742532378a65022e7ceb328828    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_d742532378a65022e7ceb328828" FOREIGN KEY (reason_id) REFERENCES public.return_reason(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_d742532378a65022e7ceb328828";
       public          postgres    false    4191    298    299            %           2606    20738 .   shipping_method FK_d783a66d1c91c0858752c933e68    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d783a66d1c91c0858752c933e68" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d783a66d1c91c0858752c933e68";
       public          postgres    false    223    3884    302            �           2606    20743 4   gift_card_transaction FK_d7d441b81012f87d4265fa57d24    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_d7d441b81012f87d4265fa57d24" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_d7d441b81012f87d4265fa57d24";
       public          postgres    false    248    262    4037            &           2606    20748 .   shipping_method FK_d92993a7d554d84571f4eea1d13    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d92993a7d554d84571f4eea1d13" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d92993a7d554d84571f4eea1d13";
       public          postgres    false    302    3858    217            �           2606    20753 .   claim_item_tags FK_dc9bbf9fcb9ba458d25d512811b    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b" FOREIGN KEY (tag_id) REFERENCES public.claim_tag(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b";
       public          postgres    false    224    222    3887            �           2606    20758 (   gift_card FK_dfc1f02bb0552e79076aa58dbb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0";
       public          postgres    false    4037    247    262                       2606    20763 &   product FK_e0843930fbb8854fe36ca39dae1    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1" FOREIGN KEY (type_id) REFERENCES public.product_type(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1";
       public          postgres    false    287    276    4141            �           2606    20768 /   fulfillment_item FK_e13ff60e74206b747a1896212d1    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_e13ff60e74206b747a1896212d1" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_e13ff60e74206b747a1896212d1";
       public          postgres    false    3996    245    252            �           2606    20773 +   money_amount FK_e15811f81339e4bd8c440aebe1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c";
       public          postgres    false    227    3893    257            �           2606    20778 $   order FK_e1fcce2b18dbcdbe0a5ba9a68b8    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8";
       public          postgres    false    262    4169    294            �           2606    20783 /   order_gift_cards FK_e62ff11e4730bb3adfead979ee2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2";
       public          postgres    false    266    4037    262                       2606    20788 -   product_option FK_e634fca34f6b594b87fdbee95f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6";
       public          postgres    false    4103    276    281            �           2606    20793 >   discount_condition_product_type FK_e706deb68f52ab2756119b9e704    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_e706deb68f52ab2756119b9e704" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_e706deb68f52ab2756119b9e704";
       public          postgres    false    287    4141    238            �           2606    20798 .   order_discounts FK_e7b488cebe333f449398769b2cc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_e7b488cebe333f449398769b2cc" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_e7b488cebe333f449398769b2cc";
       public          postgres    false    263    4037    262                       2606    20803 4   product_type_tax_rate FK_ece65a774192b34253abc4cd672    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_ece65a774192b34253abc4cd672" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_ece65a774192b34253abc4cd672";
       public          postgres    false    313    288    4245                       2606    20808 %   refund FK_eec9d9af4ca098e19ea6b499eaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa";
       public          postgres    false    4037    293    262            �           2606    20813 1   discount_condition FK_efff700651718e452ca9580a624    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "FK_efff700651718e452ca9580a624" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "FK_efff700651718e452ca9580a624";
       public          postgres    false    3948    233    240            �           2606    20818 9   discount_condition_product FK_f05132301e95bdab4ba1cf29a24    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24";
       public          postgres    false    233    3920    235            �           2606    20823 *   fulfillment FK_f129acc85e346a10eed12b86fca    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_f129acc85e346a10eed12b86fca" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_f129acc85e346a10eed12b86fca";
       public          postgres    false    244    262    4037            �           2606    20828 +   money_amount FK_f249976b079375499662eb80c40    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_f249976b079375499662eb80c40" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_f249976b079375499662eb80c40";
       public          postgres    false    4095    274    257            �           2606    20833 /   order_gift_cards FK_f2bb9f71e95b315eb24b2b84cb3    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3";
       public          postgres    false    3976    266    247            �           2606    20838 &   payment FK_f41553459a4b1491c9893ebc921    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f41553459a4b1491c9893ebc921" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f41553459a4b1491c9893ebc921";
       public          postgres    false    3893    268    227            �           2606    20843 /   discount_regions FK_f4194aa81073f3fab8aa86906ff    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff";
       public          postgres    false    239    232    3917            �           2606    20848 *   claim_order FK_f49e3974465d3c3a33d449d3f31    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31";
       public          postgres    false    262    223    4037            6           2606    20853 #   swap FK_f5189d38b3d3bd496618bf54c57    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57";
       public          postgres    false    311    3846    214            �           2606    20858 &   payment FK_f5221735ace059250daac9d9803    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f5221735ace059250daac9d9803" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f5221735ace059250daac9d9803";
       public          postgres    false    262    4037    268            /           2606    20863 0   shipping_tax_rate FK_f672727ab020df6c50fb64c1a70    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_f672727ab020df6c50fb64c1a70" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_f672727ab020df6c50fb64c1a70";
       public          postgres    false    304    4217    307            �           2606    20868 (   batch_job FK_fa53ca4f5fd90605b532802a626    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "FK_fa53ca4f5fd90605b532802a626" FOREIGN KEY (created_by) REFERENCES public."user"(id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "FK_fa53ca4f5fd90605b532802a626";
       public          postgres    false    4250    216    315            '           2606    20873 .   shipping_method FK_fb94fa8d5ca940daa2a58139f86    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86";
       public          postgres    false    311    302    4239            �           2606    20878 =   discount_condition_product_tag FK_fbb2499551ed074526f3ee36241    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_fbb2499551ed074526f3ee36241" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_fbb2499551ed074526f3ee36241";
       public          postgres    false    3920    237    233            (           2606    20883 .   shipping_method FK_fc963e94854bff2714ca84cd193    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fc963e94854bff2714ca84cd193" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fc963e94854bff2714ca84cd193";
       public          postgres    false    4217    304    302            �           2606    20888 .   order_edit FK_order_edit_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_order_edit_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id);
 Z   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_order_edit_payment_collection_id";
       public          postgres    false    269    265    4076            �           2606    20893 P   payment_collection_payments FK_payment_collection_payments_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_collection_id";
       public          postgres    false    270    269    4076            �           2606    20898 E   payment_collection_payments FK_payment_collection_payments_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_id";
       public          postgres    false    270    4069    268            �           2606    20903 2   payment_collection FK_payment_collection_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "FK_payment_collection_region_id" FOREIGN KEY (region_id) REFERENCES public.region(id);
 ^   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "FK_payment_collection_region_id";
       public          postgres    false    294    4169    269            �           2606    20908 P   payment_collection_sessions FK_payment_collection_sessions_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_collection_id";
       public          postgres    false    4076    269    271            �           2606    20913 M   payment_collection_sessions FK_payment_collection_sessions_payment_session_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_session_id" FOREIGN KEY (payment_session_id) REFERENCES public.payment_session(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_session_id";
       public          postgres    false    271    273    4092                       2606    20918 /   product_category_product FK_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_category_id" FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_category_id";
       public          postgres    false    277    278    4108                       2606    20923 &   product_category_product FK_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_id" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_id";
       public          postgres    false    276    4103    278                       2606    20928    refund FK_refund_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_refund_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 G   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_refund_payment_id";
       public          postgres    false    293    268    4069            �           2606    20933 !   line_item line_item_order_edit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_order_edit_fk FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 K   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_order_edit_fk;
       public          postgres    false    4049    252    265            �           2606    20938 $   line_item line_item_original_item_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_original_item_fk FOREIGN KEY (original_item_id) REFERENCES public.line_item(id);
 N   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_original_item_fk;
       public          postgres    false    252    252    3996            �      x������ � �      �   n   x�KLNK�70t��3��20su1�0q�25��p��r�4202�50�54P04�25�26�32�06��60' ��YZ\1���� "���;��1 �����5ҍ3�3�+F��� ��s      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x����n�H������w3���|IɴĲ$�)��6X�$Zb�v����>�b��_l�dR*�� DUw9"��q�#�-Q/�^�b�O���]�B��A�QQ�T�c�K[Tmd(�l��-v�A@inGvV���k�>��+��i�Ş��ke�=���*�V*�jឨ��t'��w��#��<��}Q��}&m���x3��gq��� %��^<Y�3ï��HE}U�S-��8`7��*ߖ�D�����j!w��-�b�l�����}�,vi�T��v�2T��K3�����}Ȃ�ȴD%�$�k!3wjK�I�X�7Q�7�u:�G�]m�#��
�`��*��^^e��F�.�)�{cd.��C�t����l����{�oT�ոGm
�
�vedO�����:�Oj� &�Kw����.4?W�Y?��N6���n�/&3��YMI��څš����F6�Fzm�Ƶ�<�6������l�\ZXf�̰a����dB����?q�s��GUR�۲yG�����>;�q~����+�S�M���|W6	T	�4r��v�(̓���lJ(�>k�k�5�CuI,�A����7s��(��W�6�Ƨ�C`a����Z���rp���Uu+{�W�*�C�����ʨ*�\)D+���2`�ފЪL�ٙx�:GYA��˦a���&2�8�R2��^��b��e�Dg�B;p`o������	Īװ��"֙�e�K�����;�Q�ޣ��%ʠR����jj��;������{���2*���"ꄷ�;s~���Z^L�V*�Z�z�֝��=����J�Ⱥ�!S�X�q���{����X���։2��j2�l^ %��]�к�Wb��Y���jQ��چZt�Y�TŦk��%�����ae��M�k>7�m�#�~���-�H�gYSd��U��Wia���t�Gǿs:��c�����x�홏u�Ǟ��8j��9���Su
u۲}�-]���T-ʊeߛ2�;��h�eL��X��)�~x�6q��Ut��I�ݡb(�}'リ����e{��E��������'�f
���DLnݾl�C��W�4&��%�Ƈ��D=�u݁l�Б%��������C�/&��0A��
~R���?�'d�%���̛����8K6M3��#~ʰ.i0���i�I���E����#�1<�lzT�l	V�fXjxc���`�Xw���d��jr˻�,���UB�.L�mN�o����ͪ���#�9�Po�{�p���񠽎ls���MRp,�p)-��tBA�ҩ5l�o�G�B���^3
S-��!'<o[2�=N��<c�F��xT��q��zx���{�]���mc�*W��2��7:�O�ƹOK�
��S�	z��}�BjyG���x�!x���᧐��d���Mt�}v)h�+w_�MV�u���])i�|���˒(m���dP�H�*�!k.�?�#�Bˆ��4>_�mE��k���{�,C-0yZ��ϧ�f��x�"~�6�͙�!f�FCL3�_�Z��&���}q~[�TT��-[�o���Fd�����i(aa�`-�(�6on%%,J:�Oc�(�Ð9a	h�L]o�%�C������%>"2�{{�������眈b��U�U|�Q{	^x��Q�Z+j�K&/9x��~o��s��{�g�Ǡt��+��(z��gW��I�	Pw��E]c��RZhc��W/�&)�}gA|aG�$��0%��a�)9��鬅��7{Z8+�*���s�E�R����n4KV�$��G;t��e��0=���^�搷�W�E}��@���� Ԝ}��K��nu�mÖ�Ck��'�f����� ��=-�>4��B�#��ĥ��@�2��1 ��	Mw�o�C���3vd��ᶮ!��};�ݭ��Z��!q�Ch��P-l�"�2Ќ��O(:r�	��̼���aa�U'�1LUA	b}-6�5>��P%�n+p�I[��0Qf�����YJ�O�xj�<!�[���&b�b�=���ݏd�ŞoHl�e�c�\֍�?F��������ű�O���sc�[�o	E�!q�6�J�*2���	�8$��<�:�ɶ"��w ��5e���s�5���c>��UA%J�2%����X�m�*8v~�u~�)�n���n_�qT�plXg��P�<��L��M��d�&`�w+�#Ā�@db=��[�e��9T&��O��ݓL�dw6-�
� �e�c�1w^�u@M!6CӪ��� �p;� �@���L^#�]�E�F9�������Sm���-^�\��j�&?�u��'�7�|C�Pk�M/�fx}�Bx��:HO6��?�c Q�DhG���AxP�^hy/ּ�H$�yT����+�vf�*���z#_�JvtȮ���~f lZa����	�D�g{�W>�S��<�B:W�:�Δ�a��I���k1Q��Ϟ��g�+�w92�v����~���]�{���1�R�t��Y<����f�}9FPN��˃�#bU�<�(�)-f��IN�|ɣ�}�ϖ���9[��ć����#>[��)�V�ɣ4�c.G}R����7����V���r{�׭�G�"{������ &����B���`��{��@���ӳ��9ߟ߯SP�b@W���l�ǉ�H���~����S��#���t�Zg���*_/�]�7^��3gd/h[�p�Ҭ�UO�bW`���򂩇D�����}�st`W&ՙ;���f��r�b��H���j	*�e�����<%��TT������} 6��a�q���.3p��q�k�,ô(��
��:.�J�]��`����fQy�.7g-�W�w�8��w��p�OdV}���T5L�I����en�A�s�5�X����ɐ����iTfF�{�g��������S��"�i�f��,gܴ��}F=z�SRD��$��ts�݉����t޽*��ɷ0o�E�uEw�/.2�z39�l������?��%Η�IKI^�֫tA��ܹ��dvѫ�:-��$��N_[eV���P��0�{�hf�h��� ������=�]��\��A���v����J���^ �[;Z���B#��rHY�nv�]?WP��{�TV�4r�zՈEU�Վ�9Z�RO^�O���l����KC�,�����G[��/��	g���7�u��9�sg����h��6?܅�s�3����!�H@[]��ܛ�y��R��Y��^�McHO��L���;�n���"ƨ�s="�[ι�����x/D�L C:��C����"H�ʥG��r+���r�Y���XΘ�(-������l��
������H�?k�\�>{����{�$�����0s�������*}ܗx@���s���I�C��(��b��+��Kz��\���Y�3Y�'e�4�tC;�C�z~0!����#�I�t���^8_��=3u�7k�bS�����ҽn-���5�вϡ�b QA[$�0��в (�j_}��x/e���w��H�Cc#~��Alp���w]�ZL�i�W�ٽp��"j| �J_�#<������r"�,���[��vr"�N�Ǎ�7C�\_	.�kM`������0U?���f�!����~�+ޔ�7��Y�x�-��`^r�l��('�~����y�Y�������}z�S��L�������
��j.c9���E�'��^/]�N�c|�`}�I���V�(46aB?)��ǘ��C���5�p��r�K=*��^�mKGE3�,թR���N���tY��O6.M\<![���c8;}�g��˰�|�v:@1<�9ug�r��V�<Dqt:��y����M����n0�]�F�ViD^�0��r�7��!ӹ�f�KT��S�nKf3vKT�'�ڒ(��M�1l�r(�>�|�x�͓%C`��4S?�o
B��7[ƿ�f(n1x�!T���.���4j�ϰ-Դ���6|@d��%�nBi�N�6�O������M���UE�]�����o�b]_��ô���=��_��l�B1��M����3���O#Z��������@.�^�USgƨ�,��qؼ�1�S�Pf� �  ���c�<��f�CT���c�F�׌#�ү~����c��Y��X���B�A��H�.n��rI�?m���\���g=��nɶD
��I{����}�Ӻ/�0�Q��H����\����;i������hyt��V����ۨC�({��m��6�̥�5�i�o��p�m��X�/��ێ�)�M����)qS�R��])J��9�
��9����tX�YA��s-Y��̥J�'�}gѯ���sk�];��E5�n<B�/R)����J7qRl�;x�a��)����k=a~�0�b+�y+}��P9&�f�^�y{��b�[a�g�E��ko����J;HY�ԣe��b�dp�	���&�� ��TK��}��5��D�8Y��!`B����(���D��������̓ �"B&E�W�ԏ�Z��:�_)��؈>�~��~<���+E���NM�Lecp���y�b��l��}yWЋZZ�:�6�?R_16>Fv {���6���6��א5?%�$ԏ�i]�U�5|�O	��[D���s˷�� 2�ֵ�hU��@�m�GH�F�+ߵ����#k�ң�{w� ��d�h���RT� C+�8��iy��-��;��!|s��Υ'��Wo�ݙ>��:��M0��R����}я������h�v����
e �[}q�g�����w���䀸��3�k��ъg���ꬑ�f?��١|����P�������WW }Id^����e����~m��е[�R~�kJo`v�����Ҧ�!����]O��9={|���z]��<�e|h�[R �����m����R���ݗ��[9DI�����펔{(Cv�&��y�k���#� �x�]Av��n��� b
�0�`�L�֚ۗ���M�)��6�x#[��v�K�m���)S)+�R�̤�� 4��mR�̑����`�?8O�Gs��&�˄���c�׿jb|���}��wZԈ���G��b ��@	)�d��7��Ѽ�ƶ����o��� �����[oP��wL�o���K��o��=V�~}���<��Y^ѡOKba�D2V�CD���z(����:��~п�������5���P�{ �i���g���w%M�ՙ�$�z���J��ݺ�m��9�ӷ(M�'������fd��Vs˫��L����C��R��d!c^���yu�ú�V��F����y�4�~߄2���ZA%��P������J�Ɗ]�F�hj��y���H�}�[�-i@���]yt����c���<��A��{�&�"���A���9XA���"~n~��(��k�0�հ���Z^��^ۓ�y�_dH�}�g3�D���<�勊�Ȅ�}E5��Kx�kG��.���)A _t5����T���BG��!y�)L�B�����%��+����ݽ��7�p��?��=���s�l��̈́$W�E?$iu����O�����BO0�~�ͨ+M>uw��pė~������B�bX��5�ēLY��W����Qv�Qt��R !�.��ǿZ� ��C��9mz��������A�2
�j��luҿo�+[��JHI�:���I�R�y�v�/�SpvH����?'�O�ڿ�~��F��ޗn�����iL�ܒ���{l��cU�W������/��������      �   �  x�]W�n$I]���ZxK�����re����DV�3Ù��̬r֪�!�+V,F��M30=Ġi6��H����/p"��n�����[7�>ι7�.#������Y�[��z����$W[���]~�dP͸��3�ӻ?��]�������D����4�e�/M�s�OuN�����l��HƳ�:��DJ�,�+(��s�?�ӿ_��Y�:&N�7v7SRgf��X�J*њ�N�0:v����>����\�����n��=�\�����V,�9�vuu�㾷/�Z�z)o��Z
S�0��IYU4O��7���*�x$�D��<�,�u�&t����m��Y̍�l��$��O�+��.O��s�)�vk'�����a�p�`����؅B�mp��[��3�����&#dkf��Z����X�*��dJSXU�
9P�i����z���G7���u��j���5�8qn�L��=~�S��wi������:����H���u�dYn�g�Ft�̄���r��M���<[=��b�Cg�3�����,��_;��⭙\@������RP��^��ca"{�\���)��s'��X$HS���5��7g�j�9��P��Cq�4�~j�P�Ikh�,��������Q������w>uX�d�pH�X���o9(+�(�M�b".h�7%ؽ��3�MἙj`�	�hr�:Y脧���*���T�ԅ��4��aA�>���۫T�dR�,�F^�6�5��⤤����?m��7�ڞ��U�۞]{5
y���:����=�E�3��jQ��$�hh˼(�xl�����'hV��Q+/�tXbRJ�]=��K�Ж.��Be�~�6t��F����Ь��@E����K�dVN�89(�[�j�8�
�%ݾ����/o_������<���t`�����8�f�ݟ���]qg��2�_����-�@sv������Ϲ�&%g
�sw�#m"��?�hL��+���I(����e�E����&���3��ǿc�P��$"Os�T�i�64H�
���� I,ylɟ ��*�����G��a�����t]��dNo/����MC��i"�;΅�� �Q}��6��b$B�~��#%��	����(Y�ѨrKVI�9��%˖P�n�j�]�u��;�9Q��}^s�qǫ=���+��~y�Ѹ?�H/^k�ǜ�{/�~��TrӰ�#UN�BD��}���S��4�1�yk�`~媢�d������k-�uld�rt���tg���M�x��,�|#i��k�������?������7 ��.�|�i���`܎��k`�ٍE����0���?��
���򥓉�t�	��VRSoǮ	61<�mysm"B���<k&ڬD�i���������W�W?�}����%MD��|�A*��j��'���h���g����ɇ���k��O��v2E��=��<5g�P@ce*L�p5��R��@���L�;Y����L�3ہ^a�Tz&x�L���N�(5��I���M�ϝL}�,Z�am�a��Б������0�P�.�N��|{���e1�����͗������\L�츋3������:��t��pǈ�E	G��k�H������#eS���RG��P|����f�rV���@�t�m�J�v���a������)(x�;�֑�<�*	���o��.Qפbnb��k��8�y�����
t��&���?��5���44�U��z?�ப��s��CIF<jY���Xo��>'���t���:պ�y�x�j��wh���'ǩ�rB�o�%>�:��/��K���`�Դsl+�z'�'�^֡��s�����wۛ�c�ĺ���^M��~	��H����<��ul������׽ݎ@<jZ�A��.�>�?Uo�9d�0������2O��������`�וf���SO�nq���"�l����	n��!�+���c����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x����
�0�u���ޤy��Xш���\X���o�P\
�l�����
��LJU�]VRu)V��oH{̹nZ��ȝ����1����7��v�8�w����a�$g���L|"�@2��/!~�8.�2Z��x:Ƣ=��~ Y&0      �   �   x�K�,N�ϋ70t����r
t�4v7
3t�0���2��,(�O)M.�O���IM.���+����L)*��r��2tt�vq2�2����4202�50�54T04�2��22�3�073��60' �D\1z\\\ b�(�      �      x������ � �      �      x������ � �      �   n   x�+H�ω70t��32suv�u2�p����0�L�,N������r
t�4v7
3t�0���2��4202�50�54T04�2��22�3�073��60' ������ e��      �      x������ � �      �      x������ � �      �   I   x�K�,N�70t����rr���535���p
�u6v�,JMK�8�ED�;�:�Y����x�DEq��qqq �L3      �   �  x���M�1@��_�;����j[�V�����Z	�ĝ�M���8�V�)�8������~����z��lw��Ï�ϛo�_����m�%&���\<��b���IZ01d2BR��#g�ar,��,���FZNl��#�ɶ ��h�q�K���sd�T4B	B��@c�� ���t$�Д|͚�NE��&�{e,�8�
�s�-:�-G�0q-�Q*���h�Q��cL",��y
�Zf@�B' �6*<QJx5�r�ŕ�_R��l��ȁ�������+�Oob:R�����X��~φ���WhR,+��
lU��Mѡ�̭��S��@#e���(��?��9}JO,_��ںF���q�f����Y������n`�����{\�����N�^t-޺�b��P�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��M�+M��,����� #&�      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x���K��J�������AS�*��E�(/xc �;�LC�����G��LBC�i7���������@����hR�Udz�*��Qn�_v�pű���7�����h�c�m{��z������A�96��S�����V{<4���ӥ;����� � _!YB��B�SF����or|�bSV�2Y/T2O�}_�XmE��p&��Se~�����a���bV�to�La]XQ�c"_��nk��6C��_���4���V؅id7mcUxy��)�3���R���T�d�s�sszm{i^g�<�A��p�y������3EE�B0�EF�%D��w�e��=ˡ�"�(�2,("����F<Sb�T�2���QV�tu7��3c����v=W`�ۂc��゠L2�O�)o��`�祼�(�z7���|�H��6J�Uz�$��:S�L��AՖ�s@d}7u�==����y;����*��,�V"7���V62ݦ9�~X ���U���.d�@�(\�5\C2!�#ʩ��|K�bI�ιxKx��P��	K�%OeS�C@td`�Z�3EV�D:�g
�if!�����e�b��+��-(b#��?"C!8a�@��%�K$t!�A���շ��Qi�W����R�~�����B�Ȣ��<P��ԇ���}
��C�J�[���$^�q��K�ADm#���"��E�'"~��^�0      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�eV�r�6}�~L�ˣ#'�I��N�ҙBB2�T2�����d�4�Y���7�pΌ�F�4�9���}��P�@�B��F6���b�,���* Hr�)�,�i����z�`���+m-��ŗ򡷗�	$�2_Y�㜶�s�\��TP���[���x��0��8îr�`��t�:��6������)Wph4�inl3O����ݧ4|˕	<A�qJ{��4m���8��e��!��ܠ����e�c��PY����q�(�]ʅ�/9�↞*;�eLfs�Ce^��9��Q���_�xr~���'��k���H��+Z*pbP(��$��hv�}܏?�!}_bIu n���L
m�i򸝯cgL������4̹�'>�ֆi$i�C^&�h#�D���b���/)�8Q,�?ɉ�&t��9i����
��L3m=3L6����w���b{x�\@��E9�5�߇��f���W����6,��g�X�@��(�+oF�����!�\�A��7�`��p͏Ч�z�N��Kx
�,n�a��:�����ݯę+ u�0J:�,6y�o�׌�� HR����j��h���-S`N8�1��H�k�vxxJ����@����K��>A�|@� $֥�Z+�,�����tuH��+h,R%�Gf�f�%��>/W(EN+�5�_S�/�x��S�S�0 �
�Y,B�1<��4���;����W�0ǴFN��#2��, �u�]VbE8Û�D��Ӹ�W6�ĵaO�D��6�%֥s�+;HU<��1�	�r�0����W{�꺻)��S��$��aX
��Ra�?��p����<3�4''Źļa�/�T���$Q��ENQL'y�s������"�� �sm���s'}�C���)AW�ĳ��;T3*����i;o��=Naȡ=�lŊ�0V
�ݛ/ת���kL�"�IN�p��<`��ǩ����<�H(���"�4�	�� G��I�;}�\++(Y��H�v�&c���������R���W��ɯ@�(��a�B��K�'��J��
������.����>��Q�B�"% Վc���`����VofP$�'�Up�}�p�'��f��6�*;(����c�jf1���>�'���+~�����`<��gĹ6�z{����?4��2�:T�\E�{mM�
��a����5�gb?����2�&� p�(��y��B��\��Ϛ��7e;�1P�@�O�[�)�ο�j��S���u�c�LX����.�&tRu M�[����8
�u¬0��y����Y����>+h���f�����hLW �$ ��i�q�׍s�t,a��|�0`X�$^+`�O����)���{�ڸW��U��*�7qq�J��m3E|��l�+�� �;I�      �     x���ˎݶ����)�/2�]��ě
$H��(!@` ]t�.Ҧ�_y좵}t��̎�o~����� N=�eI�"�0�.^���/PP��������߹X�>�%�k��Щ��_@�g@~��'H� {���RL�������������D��v;�P�����^?�}؆4��Ю���|�yܵ��0�	_�b	V��4'�1��y��PB��I�fӋ�y���N	.2�e(K��m�u��c�y��P#΄m��I([q鼔(!5��
��Hu2]��n'u��l�L��nCI��t먫���RcV�/��]�x�W����yn��a��y��P
��H0c�b9���Rr��+�}L}5[ס��b4⪑ߟ�S��V���d���E,��R���g_�Ҿ_��s�<g�D��'{�m(�~lxmma�P���:�C�#gZ(�<��^��1E #�dz^�6���:y��*���o��zT�T�,v�L�v�wq��i	�D�m���V��0���%����/ʲ��m>/e�0��gZH�P��
_��A21��nCM���I��R�\��R�=q�Z!X�2�*�в)WG��)~R�>TU�>�M�i�����I����&��k���P�:ZTm9`�q�>/u�ńf��Q�Bg?}^���<Zc6�.C�Q�!x�׌�V�y��P��P���>�R���RS�qM*��2�6c֝��q{R�6��{�C;n�{O6�v^���f��".���Pd��Ƚ}�@���5c�v��:,F�&lxR�1:�`䲈Z ��`�HL�k�;{R�6ԮH�Y`֙�~>�#���7/hT*�
��UW�y/��*���O���'O���m����E0�%Ř��K��h�)j;ef`�����,��1%�/+��R��"�tI��P�Nd��I��IA���V�s�5OΉ��Y�>N��R��R��S�,�i;��祢GL$�m���w~Jw8�hچ�Vv^�6T���F�,������*���%��N7A��.C���"�kۂ	�K�#Q�X��0�
M�|^*PH�Nd�����3������P����������e)p*�[��R5�H��� �B�jC>��"+��n;OJ݆�{a�ᨀ�F1��K-�J�h�T�1W-	ˌ3���!
V)��y��PE�E�e4��靎��0)j��(P�%�e�.%/cUO֩�PE�얅o��U@R����ާ���V�ӫ6�R\gp�h'K�'��BU��o:�5���|Rj��	t�+���/C�9�n����I��Pn�3�KݲQ�.̟���y��6�=���9Bd���|MF����L�&*�V�N'���xp�l�7���������5�&&!a|D�8�^
>z�p
K�	Ʃt��>Vc��'�ߢ>��n%�J8�㜺��o������)�b�<��kx�i������p�-���tتK���R��a(��a�l�`m�Wk�Ǣ7@_9�#�׃�$Rю�͆�D����金|M3f�w��WA�C�����M�d^k�ꪏ+V� �����K�+�q����
"̎�gf(�|�&T�E�Y�}Y�VL0����z�[ԧ�۪�6:�2/�.9��-�'��~��R�
�p�W6�Ԕ]o�>~yW��Pcjbvj��H�Ⱦ��:�b����c�Ɯ�~�"o �r0  ��=E%ݱ�m���.�Y��PRT�� ���^��,�JsA�\R���>�F9y��j��L��l��v�qg��F����Ç����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x��M�+M��,����� #&�            x������ � �            x������ � �            x������ � �         �  x�ŗ[s�6ǟɧ�[Z����B`�P{�e2�!X��b�Hެ���9��*pl�n.����8��ttt~�s�Tu���ș���omU�h�N<�AW
�b��/�KJA�]Iw�d��Tu���͆�?1�@�:��B��v����Қ�u��7�'��>�Y*g�dE�°B��X,#%�$�E�Ȕ��\��(U��Xuӏm:*��Yh�$�&��*T�5A���;�T�D�~��V�AF
�X���A���~g����7��~�.I�=E��3�Ǟ5�[#��b�H\jO��t!�]U��{��n���%la���"���mR��5"#yV�@�	H�,�v�&_�r[���,�����Hv�2F�%9E	�X�����w)��^dER�i��zy�~�߻�_�e�ߑ"1M�t�"�[olYM�MT4�	�|Nq�j��|#2
oIhNo�7)F���Ĉ��7M/�9P�Ud��T��;I���i�lg=-��j�����D���t��������S�H}�ߏ�M�
�yGV7�HG���M������~�,��� �;�?fS���AH!&2,rV�E>B��͆������t��a8n�S|��i«��^���/�<��Cz���G'���w��U4\b��s�jP���?u��x��\�m��n9qߚ�7�C��i�/��uV��������|��X.$�:�1E��]G��^��x6�h6�>�Q0���z�=d3=��̘��ܱ<�d��+X��+�/%�ţ�\�$��2��K�[U�l���`��]7����2^���>
B��N�ñ��S?FR?�+�h�\^�[Fk:U�~��^�'��,3~��I���-A�4�;�I� "��Jxzt���g?ARUy����hT�ӕ�Y������
<l[�,�i!4��w�ou&�� �h*D"��s��L�"��#ɇh��H��H{���e����!�f����ͬk隆�J�}���n"�Tŀ���{�-��(�g
!�!�*�a~% �!�C�b�*��I �FN��l[Ah���uǋl�U�}2����{�s;�cCiL?�m-3^g�B|y*�f�_˒��q���a����
J�\�[�ߴ�v_H���H�J
�����RkXJ�i����eM?G���-�kHT]`� �WO�,S3���`$̎�:���&�4�5�������� ���m           x�͛[o�Fǟg?����b=ܡo\(t�7U��,�q�5�M���x�x�I��.��X��O�2s&��/�?!�!4q�)xji�Z��$\�����l.�~-�(��8�x�W^���>ɲ(+�/PY�޼"����Ş�"<�VM��\�]��ql�񑷲f�L͐n�HĚ`% ��a�mw����Y5�7���*����W�8]�x�]�DR]�3	�~a{"tp��ny?;r��c~�s��`����hc�����DS4%͕, �.�m��� 7�"��]��?AhW&��Ԭ"j�,֏��ٌ�k;;no7-h���	'�E*'%�>L��z��r��iF��zp�[p%,p��Du��ܲK�{����Vu�w���+�	F��z��	DCO֪R�8�+�t��M��Eo���hͣ�]P>�Qf�U��Ps] )H�ҹ�v�y�/��A0ѐ�z�~���i����0��[� �[#��|�Qi���T9��D̧�r]�v��ݽ�L��y�U�����L6�X�t�˳�>���bz����^Rl�B�~��5����z�Xo_���p\+o�7��PHPl���(��H���̑f3������}���p��ޚˈ(��B(X^�I�(	r a���[~}��M�܀,�	B�'��F��Ts]��Տ�����V�����en���tZ���"-�j�yl)�qkH�:��0ݶL��>h��I��F �2H���5_�0�����5�I��H��Hs�\�Bp���[�V��ؾ�Xq�iq�D1�6��qD!��X�~��X�]���vS�9Z����OC[�]%A��G�m��i���-�6�dF	b=D	��҈)*.J��TC���`V�XOIB��9J�(T���B���3�il�:���vH��<�EvE�fƎl������/����+�s�%S�y�b�R	�ͪԃWW\{��/�����>�^�]T��"	X����8\z+lh�4��Z}#αן�!6\�*T�O|�'�ALCDoeD{h%
bR��Z&�O���]1�|p�*�DT*hIFT��C$*y�����~��5��eM��ψ��=���\�]gOǒ�4$�d(X�,Ŏ���1�2���\FD1OG1�L�kv �����Q�>v��N�%�}�E�:������Hm�׋5E����u�k̷[�(�Pq
'&�"
�o��q�^�3��l�w�u�_yk#R�����Vɦm:v,�t��v�U�:AR��Y%���3����*�,�H��b������Ӎ�֋�[L�%�}&b9b����؎P
�bSo���ë=L0�(1�'�D򈔝�k�2������q˵2����F6D��z���:r��L����S�!4�
�y��=52��ri�^�d*~�ĥ�� �[sŞ[��-����[����k_�&I���>���\̐h�1Ի����Yr��~:9J�Υ�U�� n �س`A�)�ew�V�gӣ�1�c�ꨤ�P�	�
��ܻ|�����[�n�����;�a���X��c��J�f>SWl'�IUY�aI�������P�^��"X��a��X,�R��
������5��7�vО2oJ����+�Va�E��f(Nn-��}��9��F*,��:�}q_sO����2_և�� �[Q�|��*����s�:F!��qU�ŵ�W��V�<�T�O*��`Xj>�]� y��,�ٙ��?�'����<��4m�p�*Y����M�M�Wuo�����F�w,vE|���ÿl�4            x������ � �         ?  x���]k�0���_!�n��I��^����b[�C�2���v�1��W�E��9��9�Żݕ/�Y@CxV"�.�y"�I2F��j�v��m�����\<��v0� n���˺�{���E���uY�oiy�r�>�^V�?���x&%@: %0��(���wt4r�]?�ɛ��LS����Y�$��@"L{�@%#��c�)�h�n���%�mܷRC�{4�q6�pD�B>U�	������mUO��`��p�	�T����Yq(�Q�$D�z�<��eh�,��gQl���n��O��i<;�עȵ�fY����#���      	   �  x��һ�!����b�C� �@ �LLlL���x���b��n�7O�V���~|��[l�� m:�P>��2}}����[���{RΗi*�\���'���s݁�� i���BR'�e��ъzȥ���Q�I����-�nh9�]Cx���5­rF!_x�[R3q��>�^ܹ�Fbι���w�oܭU���#O9���փ)ۼ�+�#�.��T��x�J!X�IFDy)Q$�)7(����FUUK&yj���x]W����mȵ�X��1	ꙕq絟�A=yE#
�~�°��\�'EG
�!�Z.�ˈ� ��x?,b��Y�+y�n�g��tmrp@����4L�5u��ǻ���[97���.��my�R�Ux�mM�C>��̟��~������H�P��[u�Q��yy��"�Z�::�9v��C�Mi�!g�Y3�!��t���y8����S����-:��?��!V+� Q-�E��������ޗd      
   �  x���M��6���_�}ɠ�oyg˶�T�,d��I��U}=���8&sa�1��}8>�������2�f�����쓐������}:`��{D�z�^�<2F�� q'�0^~���?~�A�aṶnk����JQ@.��ɦ/��A��8�Ɍ�1�/��܈�#,OFǕ�Z�c�+YJ�RX*�^�n֙�OQXhB��(�7�J����54S^�8��)
�#��Ȭ5����Jꆳ���v���Sx�"��c=�`YK�Е"�jZ�v̥�Y�܊���i��,"�^J��+E�4�5O#��&"k�E:u���hM.�m�
<9mu
�I���U��۞Ȯ�Ɋ��[���(?Rw�+֥���z�!9��p�r����:�dLy(����%�~����4r�E��i�����~ }xr�̓dŴ�`�i9�ep
oo���8cq�3�ͩ��v�8�7��p~?}DG���h:R6���"ߞHVT�	T��>ݟ�{��2'��ܰ���lߌ݉�JPE�q�*�w	�紐�̂������Ӻz�[�W�$��x���+J���Q]V���,�4Z�d��x�) ��_ Q��{M�%�V�xhY@&_����_�߁���"/T��Lwv�q1t�����m��a�B�t2�v��ZH���?=��h�d����إ?��p|yy�����         �  x���]k���̧���Ao�K�,Y��+U��,����):�,ev/���0��dvNBNrd�O�����?������- �!Ӑܚ�/��9ҫ|���/_�j�y^�R�<s�]�z�ߏ�?��ÓjV�0n�K=�v� �? ��!�����a�%�;�?�����S���l�bF���\�O���ω�Aޑ��\:�P��s������:?������}r�+���K8[n3t�ϻ�q����ϭ�X��InZf;4�r�]�^��5� �@���p
�6��S�z�����Ud�7c2v�9>��"�X]��ƒ2�xg�;�2ʠN�s�aN��:���i�'�-���sk:�j3#�9�i:����q�V��,q2��r�V��\}@��ʍd�>��r���0�1�M�\���1�>!8�YN�ª|(܅�6
W��EU�޼j�+RM�]�O�ةHXō�����u��E7����K��������� �m��m��ڵe�4�
���˒�V]�oYv����4��Ŵ�] ���GN]05x�2��}��o��RH{��#���Nc��/�WV&��NK��L%GN��?�g8-Y�`J� A��8Cp���aB9O�9P?��]:�u-W���y:~t��t���t&L�m��}#�s��~�;��V>_���m�6¹��'=���@)qآ
~y}�S����NBc|�X���S�v��Zf!B*4\�YS^}ͯy��4��@+Ff��)�c�����K:Qa}*pϡر�t���Q溷�G�ȹ����1�\��ܚ�y����V�ڦ�5��I@�pz��C]T��jF/�\wJ����Lf��$��8WN2���M��h����A`�6CemaINX{�3�A�F$��T�tl;}h<>xc�������I@�(�c�W��)�9�����<�.w���+�g���,�a\)?	�Ε�L�\�%���Z4� 3C'Ǳ#�$��8˺!���x�A��)	C׌����0��h��������la��������i@�.rߧP[K�Zݎ93�j0��(А~�"f������~���el��!7O���:Sz�e��1�湚p�s���7�+����p�L���hZ4��=ZTa��3�d?��ׇV�c�U<������Ӈ������JV�(Zli*�����V��2��r\�^��؀���I�2��+L�j���_>}y_o?�r�|�0��w[�J���t+��x�P±
����<\s	��cޠ�#�����	�(,"��6q���؎�H���Cy����pL��w� d�����A�,)/j p�N��v�����q'i�
�x;���q���� �����z�;sc-�D��)AcN���}� oj�zYŜJJ�d�1 #>�$�!��ơ���2��KC��o��8���rѐ�ք ����݀��0D�`>\|B�J�[9n,�S)�����0�^RJ�e���2�1},!�z�z��'���e�o�@� LY�(���U������OpY�}h����ֻ,[���o�Rh�Ӫ�4����F�!�A��k8P���j�֭�EIq�^L�1���1�1�!�8��c�X@�0G���3�/��ݻ�"`m�t�*�S����x�{��-�My3~j��f��ޱ:��oᔢ B�U_��y~i]������@�r|���X��ѐ ��I��oxe9�M���p�����^����w��S�H�         �   x��бn� @ѹ���g�#��yA��HڽQ��R�J��Wg�����l+��d\�e�>�갹�=?k�l�9�I��( ���j'',f��P�2�pF{�WJ�/�_М�ѐp���i�Dg�Q��&���|⎝є��TE}���rF��evP�ci�[����@Z�QW��0����sG����b��9p���o�]�� �@��            x������ � �            x������ � �            x������ � �         ?  x����j�@��^E�%r�Ɲ&�AqH�`T%�B����һo �6*f���0���7@qi��[��D̈���$�bg��ϡ釕��5�5�b>�>�R*!^@�SO�����*�q�)��ҽ�˪���	.�f����=�� �/`�qf5-�� 9�fό,��ut۾ߚ��Ŕ�E�o�1���	���Ԕ�2;��9�M?��>� N@-@�:��!J���ځ&Aa{m�qv7�#�1��bФN!
<���uBJA�a��}|�;,a�	 �E��0I���<�E�S�V	���~�la���B-�oZ��s]�����            x������ � �           x���[��6��뼟��t>�Ζe��|�l
�l-+�(����Z�5VF�U���w�߼z��� �@�9nT6��9�ZS�O�����o����Ǜ����X���R�م�M̧g������껏? ��'<Br��řRL��O�~���n�bq"��������Ͽ�z�����/iXJ��>���Nx9�>��gз�Į����q��W���
�)L�*u����N���&���\�y�� ���q��+�ؒ����Z56�S��ѳB��i�k�uv����g������[�^�܊U�����4I�9��>�Ix��o[n؄]����=�;C���gIGA##T��������7Ċ��vt����L]��I��Ȣ1�a�>�6s�M�ϸ5��,!J���W��}ԇ�˨�j٢9b'e#��G�Q��h���8�	$O��W�Q�qD�#��0�0m��ک�j�0k�GY���Q{kehr��2��>���e�~dB�k밭m���ptu�>�թM$�>����puu�֎�v�i�"��fu]5V�����K���QL$�4��]3�}ԇ�˨�8̨�!m�#A��>]F=JZw�˄p�պ��pu�č�-bQk"lɲ�z�1P�|D�	aS{xԓ�r6�v�B��}ԇ�˨���ۍK�
��Ja�Q�.��*��	Ԧ&�Z���W�Q'�E`m���mw������ӫ?w��8�Ӈ�ؙ��w�jg�Vvz�B�bJ�߶qmg׶�T�VI�~�z �d�jVۖ!.���u��P��S(o�w����8s>mC�iC s��Uٷ�_;gz���Y�Xi��|����1/qn��������0�/4p��"o��No=���~�jt3�ɍy���utt�c�q=����&Z����O��#�/�!e�+���[uDW�	�9���9�l>��s�����Y ���ޝ��#�ZF���W-R�O����ۏ�l�<#� 7�W����������>�'            x������ � �            x������ � �            x������ � �            x������ � �            x�+JM�70t��3p�5qrvtt5���2�ps	��t�L--�4����4202�50�54P04�24�2��355653�60' �D%@��U�d�QD��������i����IT��#giq
������ v�4g         J   x�+JM�70t��3p�5qrvtt5���2�ps	���M�+M��*BRe�f�l��fanb�mS���� ���         J   x�+JM�70t��3p�5qrvtt5���2�ps	���M�+M��*BRe�f�l��fanb�mS���� ���            x������ � �            x������ � �            x������ � �         w   x�+N�70t��3p�7r
q�30s�p�
34�4202�50�54P04�24�2��3626�0�60' ��钚�X�S����Z����������\��X����T����RZ�ș����� R9#W            x������ � �            x������ � �             x������ � �      !   �  x���Mk�P��ͯ�l������W��(jE��-���a:����M�ΐ�pv��xx�;�o!Z�!����*�]D��{���Q��}�]��������ʄ�,�#z�̲�� 7�:Zafǐ��"��?�h�Z��j ����o7�6�/�C�n�n��j�0�d�A�%җȼb�0����7ۛ�u���E����.��� I�J��ah���H69��c���Q�sɪ#2m�a��G�jZ��
�*��`J<�E����{���6�!���v�Ǧk/̝�Z��_Y��Fb�f�<�.&.K�H&\�����hN����!̔�����:�S�<_���D��c������L�D'/��o�<�y����{dF���<_;���j6�=���      "      x������ � �      #   �   x�+.�70t��3p�37��s72u	0���4tq��tIMK,�)Q��,(��KW(�O��I�L�Hp���(�X�YZ�X�i����"�b$X���{;���D�x���p�g��(8'��mN��'E�`w� n�?�      $      x������ � �      %      x������ � �      &   {   x�+.�/J�70t��3p�6r�q�6���043��
��MM)-NT��,-N���4202�50�54P04�24�2��3626�0�60' �A��pk���B���=\����
�b���� !&�      '   9   x�+.�/J�70t��3p�6r�q�6���043��
�,-N�*&�(���+F��� ��      (      x������ � �      )      x������ � �      *      x������ � �      +      x������ � �      ,   �   x����n�0 E��+�N��0�VP�hڲH���F�
SP�}�F���9/����xy0���$a8�;�m�pQ֪�TS_�Ҙ�q2�A-lne��F� �-��?$O&���t�K�zo_:f�((n8��Qڞ"=�uZ�W'I/�R�2��Ă���*cJwQ~��`p=t�3v��C�h����,� Ȁ��5\��g:�����ֿ�Q��E;���� n�L�     