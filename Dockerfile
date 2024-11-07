FROM beli/kubectl-shell

# Устанавливаем зависимости для kubectl и client-keystone-auth
RUN curl -sSL https://hub.mcs.mail.ru/repository/client-keystone-auth/latest/linux/client-install.sh | bash && mv ~/vk-cloud-solutions/bin/client-keystone-auth /bin/client-keystone-auth

# Проверяем, что kubectl и client-keystone-auth установлены
RUN kubectl version --client 
