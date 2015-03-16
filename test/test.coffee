
{ expect } = require('chai')

SL = require '../src/index.coffee'

keys =
  realtimeInformation: 'xxx'
  locationLookup: 'xxx'
  tripPlanner: 'xxx'
  trafficSituation: 'xxx'
  disturbanceInformation: 'xxx'

describe 'SL (Storstockholms Lokaltrafik) API Wrapper', ()->

  describe 'new SL()', ()->
    it "should throw NoKeySuppliedError", ->
      noKeySupplied = -> new SL()
      expect( noKeySupplied ).to.throw /One of the following API keys have to be supplied/

  describe 'new SL("string")', ()->
    it "should throw InvalidKeyFormatSuppliedError", ->
      invalidKeyFormatSupplied = -> new SL("string")
      expect( invalidKeyFormatSupplied ).to.throw /The supplied API key\(s\) has to be an object/

  describe 'new SL({realtimeInformation: "xxx", wrongKeyName: "xxx"})', ()->
    it "should throw InvalidKeyNameSuppliedError", ->
      InvalidKeyNameSupplied = -> new SL({realtimeInformation: "xxx", wrongKeyName: "xxx"})
      expect( InvalidKeyNameSupplied ).to.throw /The supplied key (.*) should be one of the following/



