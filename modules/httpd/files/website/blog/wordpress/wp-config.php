<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress-db');

/** MySQL database username */
define('DB_USER', 'LordKeeper');

/** MySQL database password */
define('DB_PASSWORD', 'aerERddfao_23529_RY');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'TJ?vFn*T39CyaD7oG.Ig.?%|b2uv<$Xa^W1k~-]P<FF$_^`7|Phia(5S}s:uUM+y');
define('SECURE_AUTH_KEY',  'I?+vQ+SqX?O,M]bV5T.aYg9jYFGWFdH%B?.|2PFOw>n>%-P*|5d :AhN.nu1OCjT');
define('LOGGED_IN_KEY',    'U@n45X/Ru<$oi/@ cAlv#,d>^bu21-v6y$w.93#c[([Z8:t-lGr$V$p7<TLk,,>q');
define('NONCE_KEY',        '`|+>:[Ah!I/6!YqTFu|L+-:x~:|DHY(F>P|Vuw,W(<y]twjXggmAf%lUQ#z]sSET');
define('AUTH_SALT',        'utysN.vH]lZEam~ILs:0f#ymI UsTy;n:am;,=fby/61CDtDL+W=b[x?x<%Mi;V#');
define('SECURE_AUTH_SALT', 'Qy?%qbPuSOYl=faHlrdD@;NWl:Ms7o_y<}2Y+ ![`L{+9}$5gdko~ ICqHK;!b|h');
define('LOGGED_IN_SALT',   '$%5sW(|eSH;yYC+$%+%omH1|-#n;,7>)M{a+|d$)o8k8-X2:Lgkk0C2C1WDABbRo');
define('NONCE_SALT',       '%sp]Z~gmwl$2R3>&! _Mw. *Cw@t-.rb;yL3v|1Fm!?(M.Z#g-<89Z7sDdwVUE <');
define('WP_ALLOW_REPAIR', true);
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');



