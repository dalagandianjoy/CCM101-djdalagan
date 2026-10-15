# Mission Reflection

Completing Mission 8 helped me understand the importance of securing a cloud server. A host-based firewall protects a server by controlling incoming and outgoing network traffic. Even if the physical network perimeter is breached, the firewall provides another layer of security by blocking connections that are not allowed by its rules. This shows the importance of defense in depth.

Managing open network ports is critical because each open port can provide a possible entry point for attackers. By allowing only the ports needed by the server, unnecessary access can be reduced. In this activity, I allowed SSH for remote administration and TCP port 8080 for the Nginx web application. These rules helped me understand how firewall configuration can reduce a server's attack surface.

In an enterprise environment, leaving a database port such as 3306 for MySQL open to the public internet is dangerous. Attackers could attempt to exploit vulnerabilities, guess passwords, or gain unauthorized access to sensitive information. Database access should be restricted to trusted application servers or authorized networks. Strong authentication, encryption, and regular security updates are also important.

This mission changed my perspective by showing me that deploying a working application is not enough to keep a server secure. Administrators must also configure the firewall, review open ports, and check that security rules work as intended. I learned that small configuration mistakes can create security risks.

Having eight completed missions in my GitHub portfolio allows me to organize my laboratory activities and demonstrate the technical skills I have learned. It also helps me track my progress and document my work. Overall, this mission taught me that cloud security requires careful configuration, regular monitoring, and continuous improvement.
