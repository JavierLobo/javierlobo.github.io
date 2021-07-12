
## El comando 'systemctl'
Antes de configuar el servicio de OpenSSH deberias conocer el uso del comando systemctl de ubuntu. Este comando se encarga de gestionar los servicios en nuestra máquina, arrancándolos cuando los necesitemos, reiniciándolos si se quedan bloqueados, parándolos si no lo necesitamos mas e iniciarlos junto al arranque del sistema para que no nos preocupemos de lanzarlo, además cuenta con un pequeño informe de estado que muestra su actividad. Con respecto al servicio 'sshd.service' se encuentra en la siguiente ruta '/etc/systemd/system', por si te gustaría echarle un ojo.

- Iniciar el servicio con el comando start.

        $ sudo systemctl start sshd.service

- Detener el servicio con el comando stop.

        $ sudo systemctl stop sshd.service

- Reiniciar el servicio con el comando restart

        $ sudo systemctl restart sshd.service

- Iniciar el servicio con el sistema con el comando enable

        $ sudo systemctl enable sshd.service

- Estado del servicio con el comando status

        $ sudo systemctl status sshd.service

    El comando status nos debería dar una respuesta similar al ejemplo de más abajo si el servicio está activado y corriendo.

        ● sshd.service – OpenSSH server daemon
        Loaded: loaded (/usr/lib/systemd/system/sshd.service; enabled; vendor preset: enabled)
        Active: active (running) since mar 2018-05-01 17:52:33 CEST; 18h ago
        Docs: man:sshd(8)
        man:sshd_config(5)
        Main PID: 818 (sshd)
        CGroup: /system.slice/sshd.service
        └─818 /usr/sbin/sshd -D
    
    En el caso de que esté parado o algo ande mal, la respuesta sería similar a esta:

        ● sshd.service – OpenSSH Daemon
        Loaded: loaded (/usr/lib/systemd/system/sshd.service; disabled; vendor preset: disabled)
        Active: inactive (dead)
