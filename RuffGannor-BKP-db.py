import schedule
import time
#from ltechlogica.model import BackupDatabase
from datetime import datetime as dt
from os import popen,system
from console_logging.console import Console
console = Console()

script = "sudo docker exec {} /usr/bin/mysqldump -u root --password=root TechLogica_HML > backup_{}.sql"

def job():
    console.log("CHECANDO INTEGRIDADO DO CONTAINER")
    container = popen("sudo docker ps | grep mysql").read().split("\n")[0].split()
    if 'mysql:latest' in container:
           msg = "CONTAINER CHECADO: MYSQL CONTAINER [ONLINE]"
           console.log(msg)
           console.log("CONNECTANDO NO CONTAINER")
           console.info("INICIANDO SCRITPS DE BACKUP")
           console.info(script.format(container[0],str(dt.now().date())))
           system(script.format(container[0],str(dt.now().date())))
           console.log("BACKUP EM ANDAMENTO")
           system("ls *.sql")
           console.success("BACKUP CONCLUIDO !")
    else:
           msg = "CONTAINER OFFLINE"
           flag = 0
           console.error(msg)



if __name__ == "__main__":
   schedule.every().day.at("19:30").do(job)
   while True:
      schedule.run_pending()
      time.sleep(1)
