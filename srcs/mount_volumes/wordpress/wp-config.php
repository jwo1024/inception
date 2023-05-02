<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'my_wp_db' );

/** Database username */
define( 'DB_USER', 'abc' );

/** Database password */
define( 'DB_PASSWORD', 'mypassword' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'j>^&PJgP_zuvp8AuLBfLGn./Ph_KoK/{w`+9hw8uT~@.xFI1%A*J[b@`5~4gJH1O' );
define( 'SECURE_AUTH_KEY',   'B=v;kAp+ |^=`;g>V{+,goY;3b:V4LNy]>M}UvFd3hb7{,8Mjx[/pCBy`z4~CQ~2' );
define( 'LOGGED_IN_KEY',     'Ea%|,rcsWV!9erw#p$v1qr[2hiBe&TMujkZG?(=ro,C&gGPl4CZ+_P=7<3&sIK|h' );
define( 'NONCE_KEY',         '4n<k{%:Q38x.RCN 0~ 87bw}H?APT~s xsnE&f&/EfUY7r#L!X (_N:nm(kv_hw!' );
define( 'AUTH_SALT',         '=:4Y9{}f!:5O J!#xzc<hJn*vUN}TF+6]hpy`_NHO48eK2 }QU{7|{B`V#s=VryD' );
define( 'SECURE_AUTH_SALT',  '+pI+~D?=d]L96{yvTH.vqo(:F2n%F~C8`{p-p2f!Yi&r$@&oTs+&7rs<B;F1^bM1' );
define( 'LOGGED_IN_SALT',    'j_Hv3W!X?j|@`jk7s;8uRuHb6Si3(d+^Ol>JB7.ni0c$Vzx_1L?&dK#uh-KST((P' );
define( 'NONCE_SALT',        ';7&OFbe#1ln@%^%z=qltg`1H_Z?=EqtKYc^&{ft7kA?Y%bKxqzq)*;E{h[|O{|!/' );
define( 'WP_CACHE_KEY_SALT', 'Pq~WMs?GB:laL/H,8oxJ ^3HM5|rOFV/&qhUB.,Pn5]~[)V/&.GxY.b{&&/ysxb@' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
