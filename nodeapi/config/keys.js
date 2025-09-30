module.exports = {
 // mongoURI: "<INSERT DATABASE URI>",
  //  mongoURI: "mongodb://emongo:27017/epoc",
  mongoURI: process.env.MONGODB_URI || "mongodb://emart-nodeapi-emongo:27017/epoc",
  secretOrKey: "k1234e6s78h9av"
};
