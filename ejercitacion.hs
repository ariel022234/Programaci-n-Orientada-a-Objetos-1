
--data Maybe a = Just a | Nothing
data Persona = P Nombre Edad 

type Nombre = String
type Edad = Int 



buscarPersona:: Nombre -> [Persona] -> Maybe Persona
buscarPersona n [] = Nothing
buscarPersona n (p:ps) = if (n == nombre p) 
                         then Just p
                         else buscarPersona ps 


nombre:: Persona -> Nombre
nombre (P n _ ) = n



hugo:: Persona
hugo = P "Hugo" 30 

carlos:: Persona
carlos = P "Carlos" 40 

jose:: Persona
jose = P "Jose" 20 



-- retorna el portaviones con mas aviones

data Avion = Caza | Jer | Bombardero
data Buque = Fragata Nombre | Destructor Nombre | Portaviones Nombre [Avion]

conMasAviones:: [Buque] -> Maybe Buque
conMasAviones [] = Nothing
conMasAviones (b:bs) = if (esPortaviones b)
                       then case conMasAviones bs of
                            Nothing -> Just b
                            Just p -> (conMasAvionesEntre b p)
                        else conMasAviones bs

conMasAvionesEntre:: Buque -> Buque -> Buque 
conMasAvionesEntre (Portaviones n avs) (Portaviones n1 avs1) = if (leng avs > leng avs1)
                          then Just (Portaviones n avs)
                          else Just (Portaviones n1 avs1)
conMasAvionesEntre (Portaviones n avs) _ = Just (Portaviones n avs)
conMasAvionesEntre _ (Portaviones n avs) = Just (Portaviones n avs)
conMasAviones _ _ = Nothing


