to exec a single app:

by default desired_state=present
ansible-playbook -i hosts --vault-password-file=~/oli kube-objects.yml --tags "dashboard-fe" --extra-vars "desired_state=present app_image_tag=04102019_4"
ansible-playbook -i hosts --vault-password-file=~/oli kube-objects.yml --tags "security" --extra-vars "desired_state=absent app_image_tag=04102019_34"
ansible-playbook -i hosts --vault-password-file=~/oli kube-objects.yml --tags "dashboard-be" --extra-vars "desired_state=absent app_image_tag=01272019_4"
ansible-playbook -i hosts --vault-password-file=~/oli kube-objects.yml --tags "ambassador" --extra-vars "desired_state=absent"

to exec all apps:
ansible-playbook -i hosts --vault-password-file=~/oli kube-objects.yml --extra-vars "desired_state=present"


in case deleting deployment doesn't delete replicaset:

# - name: find replicaset with app name
#   set_fact:
#     replicaset: "{{ lookup('k8s', kind='ReplicaSet', namespace='default', label_selector='app=security') }}"
#   when: desired_state == "absent"

# - debug:
#     msg:
#       - '{{ replicaset.metadata.name }}'
#   when: desired_state == "absent"

# - name: delete replicaset
#   k8s:
#     name: "{{ replicaset.metadata.name }}"
#     kind: ReplicaSet
#     state: absent
#   when: desired_state == "absent" and replicaset.metadata is defined
