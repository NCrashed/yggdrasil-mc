module Minecraft.Yggdrasil.API(
  module Minecraft.Yggdrasil.API
, module Minecraft.Yggdrasil.API.Types
) where

import Data.Proxy
import Servant.API
import Servant.API.Generic

import Minecraft.Yggdrasil.API.Types

data API route = API {
  stubEndpint :: route :- PostNoContent '[JSON] NoContent
} deriving (Generic)

api :: Proxy (ToServantApi API)
api = genericApi (Proxy :: Proxy API)
