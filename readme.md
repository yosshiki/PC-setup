# Roadmap

prerequisite: windows-pc

1. install softwares    
    1. vscode (editor) : https://azure.microsoft.com/ja-jp/products/visual-studio-code/  
        1. Azure CLI Tools  
        2. powershell  
        3. WSL  
        4. python
        1. jupyterlab
        1. git for windows (including git bash) https://git-scm.com/download/win
    2. windows terminal : from microsoft store  
    3. 7zip (file compress / decompress) : https://sevenzip.osdn.jp/  
    4. WinAuth (Virtual MFA device) : https://winauth.github.io/winauth/download.html  
    5. Psytec QR Code Editor (QR code reader) : https://www.psytec.co.jp/docomo.html  
    6. MS office
    7. powershell 7
        - azure powershell
    8. browser
        - chrome
        - firefox
2. install WSL2
    1. enable windows feature
    1. install Ubuntu or CentOS
        - Ubuntu from Microsoft Store
        - CentOS from code : https://roy-n-roy.nyan-co.page/Windows/WSL%EF%BC%86%E3%82%B3%E3%83%B3%E3%83%86%E3%83%8A/centos/
    1. WSL2 setting
        - set auto-Logs
        - set history
        - set systemd
        - set prompt  ref. https://qiita.com/wildeagle/items/5da17e007e2c284dc5dd  
        \e[XXm<colored>\e[0m  31m:red, 32m:green, 33m:yellow, 34m:blue, 36m:cyan 
        ```
        # for test
        echo -e '\e[31m[\u\e[0m@\e[32m\h\e[0m\e[34m\w]\e[0m$ '   
        ```  
        ```
        export PS1='\e[32m\u\e[0m@\h_WSL:\e[33m\w\e[0m \D{%Y%m%d-%H:%M:%S} \$ ' 
        ```              
        ```
        # for root  
        export PS1='\e[31m\u\e[0m@\h_WSL \e[36m\w\e[0m \D{%Y%m%d-%H:%M:%S} \$ ' 
        ```
        

        
        - install
            - (for public cloud)
                - terraform
                    - tfenv
                - az cli
                - powershell
                    - az powershell
                - aws cli
                - gcloud sdk
            - git
                - https://codezine.jp/article/detail/17328?p=2
            - docker
            - docker-compose
            - kubectl
            - python
                - jupyter-lab
                    - bash
                    - ssh
                    - powershell...not work
  
