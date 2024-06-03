export default () => {
  let config = null;
  if (isDev()) {
    config = require('./config.dev').default;
  } else {
    config = require('./config.pro').default;
  }
  return config;
};

/**
 * 判断是不是开发环境
 * @returns
 */
export function isDev(): Boolean {
  return process.env.NODE_ENV === 'development';
}
