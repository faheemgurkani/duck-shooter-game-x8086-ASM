.model small
.stack 100h

.data
; Sprite based matrices
    grass                                         db  03, 03, 03, 03, 03, 03, 03, 03, 02, 03, 03, 03, 03, 03, 03, 03
                                                  db  03, 03, 03, 03, 03, 03, 03, 03, 02, 03, 03, 03, 03, 03, 03, 03
                                                  db  03, 03, 03, 03, 03, 03, 03, 02, 02, 02, 03, 03, 03, 03, 03, 03
                                                  db  03, 03, 03, 03, 03, 03, 03, 02, 02, 02, 03, 03, 03, 03, 03, 03
                                                  db  02, 03, 03, 03, 03, 03, 02, 02, 02, 02, 02, 03, 03, 03, 03, 03
                                                  db  02, 03, 03, 03, 03, 03, 02, 02, 02, 02, 02, 03, 03, 03, 03, 03
                                                  db  02, 02, 03, 03, 03, 02, 02, 02, 02, 02, 02, 02, 03, 03, 03, 02
                                                  db  02, 02, 03, 03, 03, 02, 02, 02, 02, 02, 02, 02, 03, 03, 03, 02
                                                  db  02, 02, 02, 03, 02, 02, 02, 02, 02, 02, 02, 02, 02, 03, 02, 02
                                                  db  02, 02, 02, 03, 02, 02, 02, 02, 02, 02, 02, 02, 02, 03, 02, 02
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah
                                                  db  0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah, 0Ah

    bullet                                        DB  02h,02h,02h,02h,02h,02h,02h,00h,00h,02h,02h,02h,02h,02h,02h,02h                                                               
                                                  DB  02h,02h,02h,02h,02h,02h,00h,03h,03h,00h,02h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,02h,08h,0Bh,0Bh,01h,02h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,00h,08h,0Bh,0Bh,03h,00h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,00h,07h,0Bh,0Bh,03h,00h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,00h,00h,01h,01h,00h,00h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,00h,07h,03h,03h,03h,00h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,08h,02h,0Bh,0Bh,0Bh,01h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,00h,00h,00h,00h,00h,00h,02h,02h,02h,02h,02h                                                                  
                                                  DB  02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h,02h                                                                  

    rectangle1                                    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02
                                                  db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02

    rectangle2                                    db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00  
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00
                                                  db  02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00  


    tree                                          DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  9,9,9,02h,02h,9,9,9,9,9,9,9,9,9,9,9                                                                                               
                                                  DB  9,9,9,9,9,9,9,9,9,9,02h,10,10,02h,9,9                                                                                             
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,08h                                                                                                 
                                                  DB  9,02h,10,10,10,10,02h,9,9,9,9,9,9,9,9,9                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,02h                                                                                                 
                                                  DB  10,10,10,10,10,10,10,10,02h,9,9,9,9,9,9,9                                                                                         
                                                  DB  9,9,9,9,9,9,9,9,9,02h,10,10,10,10,02h,9                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  02h,10,10,10,10,10,10,02h,9,9,9,9,9,9,9,9                                                                                         
                                                  DB  9,9,9,9,9,9,02h,10,10,10,10,10,10,10,10,10                                                                                        
                                                  DB  10,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10                                                                                               
                                                  DB  10,10,10,10,10,10,10,10,10,10,10,9,9,9,9,9                                                                                        
                                                  DB  9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10                                                                                        
                                                  DB  10,10,10,9,9,9,9,9,9,9,9,9,9,9,02h,10                                                                                             
                                                  DB  10,10,10,10,10,10,10,10,10,02h,9,9,9,9,9,9                                                                                        
                                                  DB  9,9,9,9,9,9,02h,10,10,10,10,10,10,02h,02h,02h                                                                                     
                                                  DB  02h,02h,9,9,9,9,9,9,9,9,9,02h,10,10,10,10                                                                                         
                                                  DB  10,10,10,10,10,10,10,10,10,10,10,10,02h,9,9,9                                                                                     
                                                  DB  9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10                                                                                      
                                                  DB  10,10,10,10,10,9,9,9,9,9,9,9,02h,10,10,10                                                                                         
                                                  DB  10,10,10,10,10,10,10,10,10,10,10,02h,9,9,9,9                                                                                      
                                                  DB  9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10                                                                                         
                                                  DB  10,10,9,9,9,9,9,9,9,9,9,9,9,9,9,02h                                                                                               
                                                  DB  02h,02h,10,10,10,10,02h,9,02h,9,9,9,9,9,9,9                                                                                       
                                                  DB  9,9,9,9,9,9,9,9,08h,9,03h,03h,03h,03h,9,08h                                                                                       
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  9,9,03h,03h,03h,03h,9,9,9,9,9,9,9,9,9,9                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,9,9,03h,03h,03h,03h,9,9                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  9,9,03h,03h,03h,03h,9,9,9,9,9,9,9,9,9,9                                                                                           
                                                  DB  9,9,9,9,9,9,9,9,9,9,03h,9,03h,03h,9,9                                                                                             
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
                                                  DB  9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9                                                                                                   
    
    duck                                          DB  02h,02h,02h,02h,02h,08h,03h,0Eh,0Fh,0Fh,0Eh,03h,02h,02h,02h                                                                       
                                                  DB  02h,02h,02h,02h,02h,02h,03h,0Eh,0Eh,0Fh,0Fh,0Fh,0Fh,03h,02h                                                                       
                                                  DB  02h,02h,02h,02h,02h,02h,03h,07h,0Eh,0Eh,0Fh,0Fh,0Fh,0Eh,07h                                                                       
                                                  DB  02h,02h,02h,02h,02h,02h,02h,03h,0Eh,03h,07h,03h,03h,07h,08h                                                                       
                                                  DB  0Fh,03h,02h,02h,02h,02h,02h,02h,03h,0Eh,03h,08h,08h,08h,08h                                                                       
                                                  DB  03h,0Fh,03h,02h,02h,02h,02h,02h,02h,03h,0Eh,03h,01h,03h,03h                                                                       
                                                  DB  01h,08h,0Eh,02h,02h,02h,02h,02h,02h,02h,02h,03h,0Eh,0Eh,03h                                                                       
                                                  DB  03h,07h,07h,03h,02h,02h,02h,02h,02h,02h,02h,03h,03h,03h,03h                                                                       
                                                  DB  03h,03h,03h,03h,03h,03h,02h,02h,02h,02h,02h,03h,03h,03h,0Eh                                                                       
                                                  DB  0Eh,0Eh,0Eh,0Eh,0Eh,07h,03h,03h,02h,02h,02h,02h,0Eh,03h,0Eh                                                                       
                                                  DB  0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,0Eh,02h,02h,02h,03h,0Eh,03h                                                                       
                                                  DB  0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,0Eh,03h,02h,02h,02h,03h                                                                       
                                                  DB  03h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,03h,02h,02h,02h,02h                                                                       
                                                  DB  02h,03h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,02h,02h,02h,02h                                                                       
                                                  DB  02h,02h,01h,03h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,02h,02h,02h,02h
    
    sprite                                        DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,03h,0Eh,0Eh,0Eh,0Eh,03h,03h                                                                   
                                                  DB  0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh                                                                   
                                                  DB  03h,03h,03h,03h,03h,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,0Eh,03h,03h                                                                   

    spritePatch                                   DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   
                                                  DB  03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h,03h                                                                   

    
    ; Coordinate variables
    cur_x                                         dw  ?
    cur_y                                         dw  ?
		
    xi                                            dw  0
    xf                                            dw  0
    yi                                            dw  0
    yf                                            dw  0
    xiTemp                                        dw  0
    xfTemp                                        dw  0
    yiTemp                                        dw  0
    yfTemp                                        dw  0

    xiGrass                                       dw  0
    xfGrass                                       dw  0
    yiGrass                                       dw  0
    yfGrass                                       dw  0

    xiTree                                        dw  0
    xfTree                                        dw  0
    yiTree                                        dw  0
    yfTree                                        dw  0

    xiDuck                                        dw  0
    xfDuck                                        dw  0
    yiDuck                                        dw  0
    yfDuck                                        dw  0

    xiBullet                                      dw  0
    xfBullet                                      dw  0
    yiBullet                                      dw  0
    yfBullet                                      dw  0

    xiRectangle                                   dw  0
    xfRectangle                                   dw  0
    yiRectangle                                   dw  0
    yfRectangle                                   dw  0

    ; Gameplay variables
    score                                         dw  0
    score1                                        db  0
    score2                                        db  0
    score3                                        db  0
    counter                                       db  0
    statusOfMouse                                 dw  ?
    flag                                          equ 1
    count                                         db  17
    roundCount                                    dw  3
    count1                                        db  3
    count2                                        dw  0
    movementCount                                 db  9
    buffer                                        db  256 dup(?)
    newline                                       db  0Dh, 0Ah, '$'
    choice                                        db  ?
    STATUS_OF_THE_MOUSE_BUTTON                    dw  ?
    FLAG_TO_CHECK_IF_LEFT_MOUSE_BUTTON_IS_PRESSED equ 1
    THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER    dw  3
    THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER1   dw  2
    THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER2   dw  1
    fileHandler                                   dw  ?
    fileBuffer                                    db  255 dup("$")
    bufferSize                                    EQU 3
    scoreArray                                    DB  bufferSize DUP(?)
    bufferA                                       DB  ?
    countA                                        db  0
    temp                                          db  0
    
    ; String based variables
    errorMessage                                  db  "Process Failure!$"
    msg                                           db  "outer!$"
    msg1                                          db  "inner!$"
    scoreOutput                                   db  "Score: $"
    prompt                                        db  "Input Your Name: $"
    exit                                          db  " Game Ended!!$"
    exit2                                         db  "*Press 'Esc' to$"
    exit2a                                        db  "Exit the Gameplay$"
    round                                         db  " Round Ended$"
    round1                                        db  "*Press 'Space' to$"
    round1a                                       db  "Return to the Game$"
    round2                                        db  "*Press 'Esc' to$"
    round2a                                       db  "Exit the Gameplay$"
    output                                        db  "Game is Paused$"
    output1                                       db  "*Press 'Space' to$"
    output1a                                      db  "Return to the Game$"
    output2                                       db  "*Press 'Esc' to$"
    output2a                                      db  "Exit the Gameplay$"
    output3                                       db  "*Press 'B' to$"
    output3a                                      db  "To Go Back To Menu$"
    m1                                            db  "              DUCK  SHOOTER$"
    m5                                            db  "           __________________$"
    m2                                            db  "   |   PRESS 'G' TO START GAME     |$"
    m3                                            db  "   |   PRESS 'S' TO VIEW HIGH SCORE|$"
    m4                                            db  "   |   PRESS 'Esc' TO EXIT         |$"
    m6                                            db  "       USER NAME : $"
    scoreOutputa                                  db  "Score Board (Top: 3)$"
    scoreOutput1                                  db  "> Score 1: $"
    scoreOutput2                                  db  "> Score 2: $"
    scoreOutput3                                  db  "> Score 3: $"
    scoreOutput4                                  db  ">> Your Score: $"
    ; file                                          db  "file.txt",0    ; File for testing
    file5                                         db  "sample.txt",0

.code
; Driver function
main proc
                          mov  ax, @Data
                          mov  ds, ax

    ; Creating a text file
    ;   mov  ah, 3CH                                               
    ;   mov  cl, 2                                                 
    ;   mov  dx, offset file5
                          
    ;   int  21h

                          mov  ax, 0
                          mov  bx, 0
                          mov  cx, 0
                          mov  dx, 0
                          mov  ah, 0
                          mov  al, 13h

                          int  10h

                          call nameInput

                          mov  ah,0

                          int  16h

                          cmp  al,0Dh

    backToMenu:           
                          call exitBackground
                          call menu

    keyPressed:           
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          cmp  al,73h

                          je   scoreScreen

                          cmp  al,67h

                          je   gameplay

    gameplay:             
                          mov  count, 17
                          mov  score1, 0

                          call gameplayBackground
                          call spriteMovement

    keyPressed1:          
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   pauseScreenLabel1

                          cmp  al,76h

                          je   pauseScreenLabel1

                          cmp  al,20h

                          je   recoverBackground1

    pauseScreenLabel1:    
                          call pauseScreen

    keyPressed2:          
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          cmp  al,20h

                          je   recoverBackground1

                          jmp  keyPressed1

    recoverBackground1:   
                          mov  count, 17
                                            
                          call gameplayBackground
                          call spriteMovement

                          jmp  keyPressed1

    scoreScreen:          
                          call scoreBoard

    keyPressed3:          
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          cmp  al,62h
		
                          je   backToMenu

    exitProgram:          
                          call exitBackground
                          call scoreUpdate
        
                          mov  ah, 4ch

                          int  21h
main endp

; Implementation based functions
scoreBoard PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 01                                                ; Top stretch
                          mov  dh, 25                                                ; Bottom stretch
                          mov  cl, 3                                                 ; Left stretch
                          mov  dl, 36                                                ; Right stretch

                          int  10h

    ; Setting cursor position to display the message
                          mov  dh, 7                                                 ; Row (adjust as needed for vertical centering)
                          mov  dl, 11                                                ; Column (adjust as needed for horizontal centering)
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET scoreOutputa
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          call readFromFile

                          mov  dh, 10
                          mov  dl, 11
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET scoreOutput1
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          xor  dx, dx

                          mov  ah, 02h
                          mov  dl, score1

                          int  21h
    
                          mov  dh, 12
                          mov  dl, 11
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET scoreOutput2
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          xor  dx, dx

                          mov  ah, 02h
                          mov  dl, score2

                          int  21h
    
                          mov  dh, 14
                          mov  dl, 11
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET scoreOutput3
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          xor  dx, dx

                          mov  ah, 02h
                          mov  dl, score3

                          int  21h

                          mov  dh, 18
                          mov  dl, 11
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output2
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 19
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output2a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 21
                          mov  dl, 11
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output3
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 22
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output3a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    exitProcedure:        
                          ret
scoreBoard ENDP

menu proc
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 07                           
                          mov  dh, 19                           
                          mov  cl, 11                           
                          mov  dl, 31                           

                          int  10h

                          mov  dh, 7                                              
                          mov  dl, 0                                              
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

    display_menu:         
                          mov  ah, 09h
                          mov  dx, offset m1
                 
                          int  21h

                          call lineBreak
    
                          mov  ah, 09h
                          mov  dx, offset m5
                 
                          int  21h
    
                          mov  cx , 5
                 
    l1:                   
                          mov  ah, 09h
                          mov  dx, offset newline
                 
                          int  21h
    
                          loop l1
                 
                          mov  ah, 09h
                          mov  dx, offset m2
                 
                          int  21h
    
                          mov  cx , 2

    l2:                   
                          mov  ah, 09h
                          mov  dx, offset newline
                 
                          int  21h
    
                          loop l2
    
                          mov  ah , 09h
                          mov  dx, offset m3
    
                          int  21h
    
                          mov  cx , 2

    l3:                   
                          mov  ah, 09h
                          mov  dx, offset newline
                 
                          int  21h
    
                          loop l3
    
            
                          mov  ah , 09h
                          mov  dx, offset m4
                 
                          int  21h
    
                          mov  cx , 4

    l4:                   
                          mov  ah, 09h
                          mov  dx, offset newline
                 
                          int  21h
    
                          loop l4
    
            
                          mov  ah , 09h
                          mov  dx, offset m6
                 
                          int  21h

                          call DisplayString
    
    exitProcedure:        
                          ret
menu endp

mouseMove PROC
                          mov  ax, 1

                          int  33h

                          mov  ax, 3                            
    
                          int  33h

                          mov  cur_x, cx                                  
                          mov  cur_y, dx                                  

                          mov  ax, 05h

                          int  33h

                          mov  STATUS_OF_THE_MOUSE_BUTTON, bx
                          mov  ax , FLAG_TO_CHECK_IF_LEFT_MOUSE_BUTTON_IS_PRESSED
				
                          AND  STATUS_OF_THE_MOUSE_BUTTON, ax
				
                          jz   exitProcedure

                          call updateBulletStatus
                          call compare

    exitProcedure:        
                          ret
mouseMove ENDP

updateBulletStatus PROC
                          xor  ax, ax

                          mov  ax, THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER

                          cmp  ax, 0

                          je   exitProcedure

                          cmp  ax, 3

                          jg   exitProcedure

                          cmp  ax, 0

                          jl   exitProcedure

                          dec  ax
                          dec  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER

                          mov  count2, ax

                          cmp  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 0

                          je   updateScore
                          jmp  noScoreUpdate

    updateScore:          
                          inc  score1
                          
    noScoreUpdate:        
                          call renderScore
                          call bulletsContainer

    exitProcedure:        
                          ret
updateBulletStatus ENDP

nameInput PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 07                     
                          mov  dh, 19                     
                          mov  cl, 11                     
                          mov  dl, 31                     

                          int  10h

                          mov  dh, 10                      
                          mov  dl, 13                      
                          mov  bh, 0
                          mov  ah, 2

                          int  10h
    
                          mov  dx, OFFSET prompt
                          mov  ah, 09h

                          int  21h

                          call lineBreak
                          call lineBreak
                          call lineBreak

                          mov  dh, 12
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          lea  dx, buffer
                  
                          mov  buffer, 255
                          mov  ah, 0Ah
    
                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    exitProcedure:        
                          ret
nameInput ENDP

DisplayString PROC Uses ax dx si
                          mov  si, Offset buffer+2
                          mov  ah, 02h

    PrintLoop:            
                          mov  dl, [si]

                          cmp  dl, 0
                          
                          je   return
                          
                          int  21h
                          
                          inc  si
                          
                          jmp  PrintLoop

    return:               
                          ret
DisplayString ENDP

pauseScreen PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 07         
                          mov  dh, 19         
                          mov  cl, 11         
                          mov  dl, 31         

                          int  10h

                          mov  dh, 10                          
                          mov  dl, 15                          
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 14
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output1
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    
                          mov  dh, 15
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output1a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h


    
                          mov  dh, 17
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

    
                          mov  dx, OFFSET output2
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 18
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET output2a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    exitProcedure:        
                          ret
pauseScreen ENDP

pauseScreen1 PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 07                                      
                          mov  dh, 19                                      
                          mov  cl, 11                                      
                          mov  dl, 31                                      

                          int  10h

                          mov  dh, 10                                       
                          mov  dl, 15                                       
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET round
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 14
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET round1
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    
                          mov  dh, 15
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET round1a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h


    
                          mov  dh, 17
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

    
                          mov  dx, OFFSET round2
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 18
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET round2a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    exitProcedure:        
                          ret
pauseScreen1 ENDP

pauseScreen2 PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 07                                    
                          mov  dh, 19                                    
                          mov  cl, 11                                    
                          mov  dl, 31                                    

                          int  10h

                          mov  dh, 8                                          
                          mov  dl, 15                                         
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET exit
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 13
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET scoreOutput4
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          xor  dx, dx

                          mov  dl, score1

                          add  dl, '0'

                          mov  ah, 02h

                          int  21h

                          mov  dh, 14
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h
    
                          mov  dh, 17
                          mov  dl, 12
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

    
                          mov  dx, OFFSET exit2
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

                          mov  dh, 18
                          mov  dl, 13
                          mov  bh, 0
                          mov  ah, 2

                          int  10h

                          mov  dx, OFFSET exit2a
                          mov  ah, 09h

                          int  21h

                          mov  bh, 0
                          mov  bl, 0Fh
                          mov  cx, 0
                       
                          int  10h

    exitProcedure:        
                          ret
pauseScreen2 ENDP

gameplayBackground PROC
                          mov  ax, 0
                          mov  bx, 0
                          mov  cx, 0
                          mov  dx, 0
                          mov  ah, 0
                          mov  al, 13h

                          int  10h

                          call sky

                          mov  ch, 01
                          mov  dh, 4

                          add  ch, 16
                          add  dh, 16

                          call oddRow

                          add  ch, 4
                          add  dh, 4

                          call evenRow
                          call container
                          call container1

                          mov  count1, 3

                          call ducksContainer
             
                          mov  count2, 3
             
                          call bulletsContainer
                          call renderScore

                          mov  si, offset grass
                          mov  yiGrass, 121                
                          mov  yfGrass, 143
                          mov  xiGrass, 40                 
                          mov  xfGrass, 56

    renderingLoop:        
                          cmp  count, 0

                          je   exitGrassRendering

                          mov  si, offset grass

                          call drawGrass

                          add  xiGrass, 15
                          add  xfGrass, 15

                          dec  count

                          jmp  renderingLoop

    exitGrassRendering:   
                           
    exitProcedure:        
                          ret
gameplayBackground ENDP

spriteMovement PROC
                          mov  count2, 3
                          mov  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 3

                          call duckMovementSequence

                          dec  roundCount

                          call pauseScreen1

    keyPressed:           
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          cmp  al,20h

                          je   recoverBackground1

                          jmp  keyPressed

    recoverBackground1:   
                          mov  count, 17

                          call gameplayBackground

                          mov  count2, 2
                          mov  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 2

                          call bulletsContainer
                          call duckMovementSequence1

    secondRound:          
                          dec  roundCount

                          call pauseScreen1

    keyPressed1:          
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          cmp  al,20h

                          je   recoverBackground2

                          jmp  keyPressed1

    recoverBackground2:   
                          mov  count, 17

                          call gameplayBackground

                          mov  count2, 1
                          mov  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 1
    
                          call bulletsContainer
                          call duckMovementSequence2

    thirdRound:           
                          dec  roundCount
    
                          call pauseScreen2

    keyPressed2:          
                          mov  ah,0

                          int  16h

                          cmp  al,1Bh
		
                          je   exitProgram

                          jmp  keyPressed2

    exitProcedure:        
                          ret

    exitProgram:          
                          call exitBackground
                          call scoreUpdate
        
                          mov  ah, 4ch

                          int  21h
spriteMovement ENDP

duckMovementSequence2 PROC
                          mov  yi, 109                                           
                          mov  yf, 125
                          mov  xi, 43                                            
                          mov  xf, 59
                          mov  movementCount, 11

                          call duckMovementb

                          mov  count1, 2

                          call ducksContainer

                          mov  yi, 109          
                          mov  yf, 125
                          mov  xi, 43           
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement2b

                          mov  count1, 1

                          call ducksContainer

                          mov  yi, 109         
                          mov  yf, 125
                          mov  xi, 43          
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement1b

                          mov  count1, 0

                          call ducksContainer
    
                          ret
duckMovementSequence2 ENDP

duckMovementSequence1 PROC
                          mov  yi, 109
                          mov  yf, 125
                          mov  xi, 43 
                          mov  xf, 59

                          mov  movementCount, 11

                          call duckMovementa

                          mov  count1, 2

                          call ducksContainer

                          mov  yi, 109          
                          mov  yf, 125
                          mov  xi, 43           
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement2a

                          mov  count1, 1

                          call ducksContainer

                          mov  yi, 109         
                          mov  yf, 125
                          mov  xi, 43          
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement1a

                          mov  count1, 0

                          call ducksContainer
    
                          ret
duckMovementSequence1 ENDP

duckMovementSequence PROC
                          mov  yi, 109                         
                          mov  yf, 125
                          mov  xi, 43                          
                          mov  xf, 59

                          mov  movementCount, 11

                          call duckMovement

                          mov  count1, 2

                          call ducksContainer

                          mov  yi, 109          
                          mov  yf, 125
                          mov  xi, 43           
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement2

                          mov  count1, 1

                          call ducksContainer

                          mov  yi, 109         
                          mov  yf, 125
                          mov  xi, 43          
                          mov  xf, 59

                          mov  movementCount, 9

                          call duckMovement1

                          mov  count1, 0

                          call ducksContainer
    
                          ret
duckMovementSequence ENDP

container1 PROC
                          mov  si, offset rectangle1
                          mov  yiRectangle, 172                      
                          mov  yfRectangle, 189
                          mov  xiRectangle, 60                       
                          mov  xfRectangle, 92
                
                          call drawRectangle

                          mov  si, offset rectangle2
                          mov  yiRectangle, 172                      
                          mov  yfRectangle, 189
                          mov  xiRectangle, 81                       
                          mov  xfRectangle, 113
                
                          call drawRectangle

                          ret
container1 ENDP

container PROC
                          mov  si, offset rectangle1
                          mov  yiRectangle, 151                
                          mov  yfRectangle, 168
                          mov  xiRectangle, 60                 
                          mov  xfRectangle, 92
                
                          call drawRectangle

                          mov  si, offset rectangle2
                          mov  yiRectangle, 151                
                          mov  yfRectangle, 168
                          mov  xiRectangle, 81                 
                          mov  xfRectangle, 113
                
                          call drawRectangle

                          ret
container ENDP

duckMovement2b PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 1
                          mov  dx, 1000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement2b ENDP

scoreUpdate PROC
    ; Opening the file for reading and writing
                          mov  ah, 3DH
                          mov  al, 2
             
                          lea  dx, file5
             
                          int  21h

    ; Checking if file opened successfully
                          jc   exitProcedure
              
                          mov  fileHandler, ax

    ; ; Reading score from the file
                          lea  di, scoreArray

    read_loop:            
    ; Reading data from the file into the buffer
                          mov  ah, 3Fh
                          mov  bx, fileHandler
                          mov  cx, 1
                          lea  dx, bufferA
                          int  21h
                          jc   read_done                                             ; If error or EOF
                          or   ax, ax
                          jz   read_done                                             ; If AX = 0, EOF reached

    ; Storing the read byte in the array
                          mov  dl, [bufferA]
                          mov  [di], dl
                          
                          inc  di
                          inc  cx
                          inc  countA

                          cmp  countA, 3
                          
                          jne  read_loop                                             ; If not yet 3 characters, read next byte

    read_done:            
    ; Comparing file score with current score
                          mov  si, Offset scoreArray
                          mov  al, scoreArray[si]
               
                          cmp  al, score1
               
                          jge  skipUpdate

    ; Setting the file pointer to the start; to continue with the file writing process
                          mov  cx,0
                          mov  dx, 0
                          mov  ah,42h
                          mov  al,0
                          
                          int  21h

    ; Assuming the new score is stored in a register like ax or bx
                          mov  al, score1
                          add  al, '0'
                          mov  byte ptr [fileBuffer], al
    
    ; Updating the file with the new score
                          mov  ah, 40H
                          mov  bx, fileHandler
                          mov  cx, 1
               
                          lea  dx, fileBuffer
               
                          int  21h

    skipUpdate:           
    ; Closing the file
                          mov  ah, 3Eh
                          mov  bx, fileHandler
             
                          int  21h

    exitProcedure:        
                          ret
scoreUpdate ENDP

duckMovement1b PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 1
                          mov  dx, 1000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          add  xi, 22
                          add  xf, 22
                          sub  yi, 12
                          sub  yf, 12

                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement1b ENDP

duckMovementb PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 1
                          mov  dx, 1000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovementb ENDP

duckMovement2a PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 2
                          mov  dx, 1000000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement2a ENDP

duckMovement1a PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 2
                          mov  dx, 100000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          add  xi, 22
                          add  xf, 22
                          sub  yi, 12
                          sub  yf, 12

                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement1a ENDP

duckMovementa PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 2
                          mov  dx, 100000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovementa ENDP

duckMovement2 PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 3
                          mov  dx, 1000000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement2 ENDP

duckMovement1 PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 3
                          mov  dx, 1000000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw
                          
                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          add  xi, 22
                          add  xf, 22
                          sub  yi, 12
                          sub  yf, 12

                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement1 ENDP

duckMovement PROC
    movingLoop:           
                          cmp  movementCount, 0

                          je   exitProcedure

                          mov  si, offset sprite
                          mov  di, Offset spritePatch

                          cmp  movementCount, 0
                    
                          je   noPatch

                          mov  bx, xi
                          mov  xiTemp, bx
                          mov  bx, xf
                          mov  xfTemp, bx
                          mov  bx, yi
                          mov  yiTemp, bx
                          mov  bx, yf
                          mov  yfTemp, bx

                          call drawPatch

    noPatch:              
                          mov  cx, 3
                          mov  dx, 1000000000
                          mov  ah, 86H
                  
                          int  15H

                          call draw

                          mov  cx, 0
                          mov  dx, 0

                          call mouseMove

                          cmp  movementCount, 4

                          jle  revisedMovement

                          add  xi, 23
                          add  xf, 23
                          sub  yi, 13
                          sub  yf, 13

                          jmp  noMovementRevision

    revisedMovement:      
                          add  xi, 23
                          add  xf, 23
                          add  yi, 20
                          add  yf, 20

    noMovementRevision:   
                          dec  movementCount

                          jmp  movingLoop

    exitProcedure:        
                          ret
duckMovement ENDP

bulletsContainer PROC
                          call container

                          mov  si, offset bullet
                          mov  yiBullet, 153                  
                          mov  yfBullet, 168
                          mov  xiBullet, 61                   
                          mov  xfBullet, 77

    renderBullets:        
                          cmp  count2, 0

                          je   exitProcedure

                          call drawBullet

                          mov  si, Offset bullet

                          add  xiBullet, 17
                          add  xfBullet, 17

                          dec  count2

                          jmp  renderBullets

    exitProcedure:        
                          ret
bulletsContainer ENDP

ducksContainer PROC
                          call container1
                       
                          mov  si, offset duck
                          mov  yiDuck, 174          
                          mov  yfDuck, 187
                          mov  xiDuck, 61           
                          mov  xfDuck, 77

    renderDucks:          
                          cmp  count1, 0

                          je   exitProcedure

                          call drawDuck

                          mov  si, Offset duck

                          add  xiDuck, 17
                          add  xfDuck, 17

                          dec  count1

                          jmp  renderDucks

    exitProcedure:        
                          ret
ducksContainer ENDP

draw proc
                          mov  ah,0ch
                          mov  dx, yi                                                ; y coordinate initial( up down)

    y:                    
                          mov  cx, xi                                                ;x coordinate initial (left right)

    x:                    
                          mov  al,[si]                                               ; starting array

                          int  10h
                    
                          inc  si                                                    ; incrementing full row  (x axis)
                          inc  cx
                    
                          cmp  cx, xf                                                ; x coordinate final( left right)
                    
                          jb   x
                    
                          inc  dx                                                    ; jumping to next row
                    
                          cmp  dx, yf                                                ; y coordinate final( up down)
                    
                          jb   y
                    
                          ret
draw endp

drawPatch proc
                          mov  ah,0ch
                          mov  dx, yiTemp                                            

    y:                    
                          mov  cx, xiTemp                                           

    x:                    
                          mov  al,[si]                                               
                    
                          int  10h
                    
                          inc  si                                                    
                          inc  cx
                    
                          cmp  cx, xfTemp                                            
                    
                          jb   x
                    
                          inc  dx                                                   
                    
                          cmp  dx, yfTemp                                           
                    
                          jb   y
                    
                          ret
drawPatch endp

renderScore PROC
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
                          mov  ch, 20
                          mov  dh, 27
                          mov  cl, 27
                          mov  dl, 35

                          int  10h

                          mov  ah, 02h
                          mov  bh, 0
                          mov  dh, 22                                     
                          mov  dl, 28                                     

                          int  10h

                          mov  dx, OFFSET scoreOutput
                          mov  ah, 09h

                          int  21h

                          mov  cx, 0
                       
                          int  10h
                        
                          xor  dx, dx

                          mov  dl, score1

                          add  dl, '0'

                          mov  ah, 02h

                          int  21h

    exitProcedure:        
                          ret
renderScore ENDP

drawBullet proc
                          push ax
                          push bx
                          push cx
                          push dx

                          mov  ah,0ch
                          mov  dx, yiBullet

    y:                    
                          mov  cx, xiBullet

    x:                    
                          mov  al,[si]

                          int  10h
                
                          inc  si
                          inc  cx
                
                          cmp  cx, xfBullet
                
                          jb   x
                
                          inc  dx
                
                          cmp  dx, yfBullet
                
                          jb   y

                          pop  dx
                          pop  cx
                          pop  bx
                          pop  ax

                          ret
drawBullet endp

drawDuck proc
                          mov  ah,0ch
                          mov  dx, yiDuck

    y:                    
                          mov  cx, xiDuck

    x:                    
                          mov  al,[si]

                          int  10h
                
                          inc  si
                          inc  cx
                
                          cmp  cx, xfDuck
                
                          jb   x
                
                          inc  dx
                
                          cmp  dx, yfDuck
                
                          jb   y
                
                          ret
drawDuck endp

drawRectangle proc
                          push ax
                          push bx
                          push cx
                          push dx
       
                          mov  ah,0ch
                          mov  dx, yiRectangle

    y:                    
                          mov  cx, xiRectangle

    x:                    
                          mov  al,[si]

                          int  10h
                
                          inc  si
                          inc  cx
                
                          cmp  cx, xfRectangle
                
                          jb   x
                
                          inc  dx
                
                          cmp  dx, yfRectangle
                
                          jb   y

                          pop  dx
                          pop  cx
                          pop  bx
                          pop  ax
                          
                          ret
drawRectangle endp

drawTree proc
                          mov  ah,0ch
                          mov  dx, yiTree

    y:                    
                          mov  cx, xiTree

    x:                    
                          mov  al,[si]

                          int  10h
                
                          inc  si
                          inc  cx
                
                          cmp  cx, xfTree
                
                          jb   x
                
                          inc  dx
                
                          cmp  dx, yfTree
                
                          jb   y
                
                          ret
drawTree endp

drawGrass proc
                          mov  ah,0ch
                          mov  dx, yiGrass

    y:                    
                          mov  cx, xiGrass

    x:                    
                          mov  al,[si]

                          int  10h
                
                          inc  si
                          inc  cx
                
                          cmp  cx, xfGrass
                
                          jb   x
                
                          inc  dx
                
                          cmp  dx, yfGrass
                
                          jb   y
                
                          ret
drawGrass endp

sky proc
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 03h
                          mov  ch, 01
                          mov  dh, 25
                          mov  cl, 5
                          mov  dl, 36

                          int  10h

                          ret
sky endp

exitBackground proc
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 00h
                          mov  ch, 01
                          mov  dh, 25
                          mov  cl, 3
                          mov  dl, 36

                          int  10h

                          ret
exitBackground endp

oddRow proc
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 5
                          mov  dl, 8

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 9
                          mov  dl, 12

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 13
                          mov  dl, 16

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 17
                          mov  dl, 20

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 21
                          mov  dl, 24

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 25
                          mov  dl, 28

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 01
    ; mov dh, 4
                          mov  cl, 29
                          mov  dl, 32

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 33
                          mov  dl, 36

                          int  10h

                          ret
oddRow endp

evenRow proc
                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 5
                          mov  dl, 8

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 9
                          mov  dl, 12

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 13
                          mov  dl, 16

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 17
                          mov  dl, 20

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 21
                          mov  dl, 24

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 25
                          mov  dl, 28

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 29
                          mov  dl, 32

                          int  10h

                          mov  ah, 6
                          mov  al, 0
                          mov  bh, 0Ah
    ; mov ch, 05
    ; mov dh, 8
                          mov  cl, 33
                          mov  dl, 36

                          int  10h

                          ret
evenRow endp

; Utility based functions
twoByteOuput PROC
                          mov  dx, 0
                          MOV  AX, score
                          MOV  Bx, 10

    L1:                   
                          mov  dx, 0

                          CMP  Ax, 0

                          JE   DISP

                          DIV  Bx

                          MOV  cx, dx

                          PUSH CX

                          inc  counter

                          MOV  AH, 0

                          JMP  L1

    DISP:                 
                          CMP  counter, 0

                          JE   return

                          POP  DX

                          ADD  DX, 48

                          MOV  AH, 02H

                          INT  21H

                          dec  counter

                          JMP  DISP

    return:               
                          ret
twoByteOuput ENDP

compare proc
                          push cx
                          push dx

                          mov  cx , cur_x
                          shr  cx , 1
                          mov  dx , cur_y
    
                          cmp  cx, xf                                                ; Compare cur_x with xf
                          jg   not_in_range_x                                        ; If cur_x < xf, jump to not_in_range_x
    
                          cmp  cx, xi                                                ; Compare cur_x with xi
                          jl   not_in_range_x                                        ; If cur_x > xi, jump to not_in_range_x
    
                          cmp  dx, yf                                                ; Compare cur_y with yf
                          jg   not_in_range_y                                        ; If cur_y > yf, jump to not_in_range_y
    
                          cmp  dx, yi                                                ; Compare cur_y with yi
                          jl   not_in_range_y                                        ; If cur_y < yi, jump to not_in_range_y
    
                          cmp  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 0

                          je   noScoreUpdate

                          inc  score1
                          inc  score1
    
    not_in_range_y:       
    not_in_range_x:       
                          cmp  THE_NUMBER_OF_BULLETS_REMAINING_FOR_PLAYER, 0

                          je   noScoreUpdate

                          inc  score1

    noScoreUpdate:        
                          call renderScore
    
                          pop  dx
                          pop  cx

                          ret
compare endp

readFromFile PROC
    ; Opening the file for reading
                          mov  ah, 3Dh
                          mov  al, 0                                                 ; Access mode 0 - read-only
                          
                          lea  dx, file5
                          
                          int  21h
                          
                          jc   file_error                                            ; If error (carry flag set)
                          
                          mov  fileHandler, ax


                          lea  di, scoreArray

    read_loop:            
    ; Reading data from the file into the buffer
                          mov  ah, 3Fh
                          mov  bx, fileHandler
                          mov  cx, 1
                          
                          lea  dx, bufferA
                          
                          int  21h
                          
                          jc   read_done                                             ; If error or EOF
                          
                          or   ax, ax
                          
                          jz   read_done                                             ; If AX = 0, EOF reached

    ; Storing the read byte in the array
                          mov  dl, [bufferA]
                          mov  [di], dl
                          
                          inc  di
                          inc  cx
                          inc  countA
                          
                          cmp  countA, 3
                          
                          jne  read_loop                                             ; If not yet 3 characters, read next byte

    read_done:            
    ; Closing the file
                          mov  ah, 3Eh
                          mov  bx, fileHandler

                          int  21h

                        ;   call displayArray
                        ;   call lineBreak
                          call sortArray
                        ;   call displayArray

                          mov  si, Offset scoreArray

                          mov  al, [si]
                          mov  score3, al
                          mov  al, [si+1]
                          mov  score2, al
                          mov  al, [si+2]
                          mov  score1, al

    exitProcedure:        
                          ret

    file_error:           
    ; Handling file error (e.g., display error message, halt)
    ; For simplicity, we just terminating the program
                          mov  ax, 4C01h

                          int  21h
readFromFile ENDP

displayArray PROC
                          mov  countA, 3
                          mov  si, Offset scoreArray
                          mov  ah, 02h

    PrintLoop:            
                          mov  dl, [si]

                          cmp  countA, 0
                          
                          je   return
                          
                          int  21h
                          
                          inc  si

                          dec  countA
                          
                          jmp  PrintLoop

    return:               
                          ret
displayArray ENDP

sortArray PROC
                          mov  cx, 4                                                 

    OuterLoop:            
                          dec  cx                                                    
                          jz   endOuterLoop                                          ; If cx = 0, array is sorted

                          mov  di, 0                                                 
                          mov  ax, cx                                                

    InnerLoop:            
                          mov  bx, cx                                                
                          dec  bx                                                    

                          cmp  di, bx                                                
                          jge  endInnerLoop                                          ; If di >= (cx - 1), inner loop is complete

    ; Load array elements for comparison
                          mov  al, scoreArray[di]
                          mov  ah, scoreArray[di + 1]

                          cmp  al, ah                                                
                          jle  noSwap                                                ; If al <= ah, no swap needed

    ; Swap elements
                          mov  temp, al
                          mov  al, ah
                          mov  ah, temp
                          mov  scoreArray[di], al
                          mov  scoreArray[di + 1], ah

    noSwap:               
                          inc  di                                                    
                          jmp  InnerLoop                                             

    endInnerLoop:         
                          jmp  OuterLoop                                             

    endOuterLoop:         
                          ret                                                        

sortArray ENDP

lineBreak PROC
                          push ax
                          push dx

                          mov  dl, 10
                          mov  ah, 02h
                          int  21h
    
                          mov  dl, 13
                          mov  ah, 02h
                          int  21h

                          pop  dx
                          pop  ax
    
                          ret
lineBreak ENDP
end main
