{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Handler.Home where

import Import

--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getPage2R :: Handler Html
getPage2R = do
  defaultLayout $ do
    toWidgetHead
      [julius|

       function ola(){
         alert("oi");
       }
    |]
    toWidgetHead
      [cassius|

         h1 
            color : red;
    |]
    [whamlet|
        <h1>
            Page2R
        <button onclick="ola()">
            OK
    |]

getPage1R :: Handler Html
getPage1R = do
  defaultLayout $ do
    toWidgetHead
      [julius|

       function ola(){
         alert("oi");
       }
    |]
    toWidgetHead
      [cassius|

         h1 
            color : red;
    |]
    [whamlet|
        <h1>
            Page1R

        <img src=@{StaticR img_image_jpg}>
            
        <button onclick="ola()">
            OK
    |]

getHomeR :: Handler Html
getHomeR = do
  defaultLayout $ do
    toWidgetHead
      [julius|

       function ola(){
         alert("oi");
       }
    |]
    toWidgetHead
      [cassius|

         h1 
            color : red;
    |]
    [whamlet|
        <h1>
            Home

        <ul>
            <li>
                <a href=@{Page1R}>
                    Pagina 1
            <li>
                <a href=@{Page2R}>
                    Pagina 2    

        <button onclick="ola()">
            OK
    |]
